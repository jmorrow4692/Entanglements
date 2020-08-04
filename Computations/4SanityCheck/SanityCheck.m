///////////////////////////////////////////////////////////////////////////////
//
//	We are performing a sanity check to make sure that the models we computed
//	in jmaps_and_models.m are correct.
//
///////////////////////////////////////////////////////////////////////////////


load "~/EntanglementGroups/AuxillaryFiles/Group_functions.m";
load "~/EntanglementGroups/AuxillaryFiles/Siegel_functions.m";
//load "jsupArray.m";
load "~/EntanglementGroups/LoadableFiles/MaxCleanWithModels.m";


///////////////////////////////////////////////////////////////////////////////
//
//	Here are some homebrewed functions to help with the sanity check 
//
///////////////////////////////////////////////////////////////////////////////

function CompCond(j1,j2)
	return Conductor(MinimalQuadraticTwist(EllipticCurveFromjInvariant(j1))) - Conductor(MinimalQuadraticTwist(EllipticCurveFromjInvariant(j2)));
end function;

function CompHeight(a,b)
	return Height(a) - Height(b);
end function;


function RatsByH(MAX)
	D := [a/b : a,b in [1..MAX] ] cat [-a/b : a,b in [1..MAX] ] cat [0];
	D := [a : a in {a : a in D}];
	D := Sort(D, CompHeight);
	return D;
end function;

CMj := [0,2^4*3^3*5^3, -2^15*3*5^3, 2^6*3^3, 2^3*3^3*11^3, -3^3*5^3,3^3*5^3*17^3, 2^6*5^3, -2^15, -2^15*3^3, -2^18*3^3*5^3, -2^15*3^3*5^3*11^3, -2^18*3^3*5^3*23^3*29^3 ];



//	Returns a list of square free d such that Q(sqrt(d)) is a subfield of K.
function QuadSubfields(K)
	if K eq Rationals() then return []; end if;
	SF2 := Subfields(K,2);
	Sq := [];
	for f in SF2 do
		F := f[1];
		a,b := SquarefreeFactorization(Integers()!Discriminant(F));
		Append(~Sq,a);
	end for;
	return Sort(Sq);
end function;

//	Given a prime p, returns \pm 1 depending on the sign of the quadratic field inside Q(zeta_p)
function sign(p)
	if p eq 2 then
		return 1;
	else
		return Sign((-1)^((p-1)/2));
	end if;
end function;

//	These are the quadratic fields that are contained inside of Q(E[a]) by virtue of the fact that
//	Q(zeta_a) subset Q(E[a])).
function ExpectedQuads(a)
	SFGens := [sign(p[1])*p[1] : p in Factorization(a) | p[1] ne 2];
	if Integers(8)!a eq 0 then
		Append(~SFGens,-1);
		Append(~SFGens,2);
	end if;
	if Integers(8)!a ne 0 and Integers(4)!a eq 0 then
		Append(~SFGens,-1);
		Append(~SFGens,2);
	end if;
	return SFGens;
end function;

//	This returns all the quadratic subfields of Q(E[n]) that we can find.
//	I think it does find all of them, but I haven't tried to prove it yet.
function QuadSubfieldsOfDivField(E,n)
	if n eq 2 then
		D := SquarefreeFactorization(Numerator(Discriminant(E))*Denominator(Discriminant(E)));
		return [D];
	end if;
	Pol := DefiningPolynomial(E);
	if IsPrime(n) then
		fn := DivisionPolynomial(E,n);
	else
		fn := DivisionPolynomial(E,n) div &* [ DivisionPolynomial(E,d) : d in Divisors(n) | not d in [1,n] ];
	end if;
	Fac := Factorization(fn);
	QSFs :=ExpectedQuads(n);
	for pair in Fac do
		fnfac := pair[1];
		if Degree(fnfac) gt 1 then
			K<a> := NumberField(fnfac);
		else
			K := Rationals();
			a := Roots(fnfac)[1][1];
		end if;
		P<y> := PolynomialRing(K);
		gn := Evaluate(Pol,[a,y,1]);
		if IsIrreducible(gn) then
			L := AbsoluteField(ext<K | gn>);
		else
			L := K;
		end if;
		Add := QuadSubfields(L);
		for c in Add do
			if QSFs ne [] then
				for q in QSFs do
					test := SquarefreeFactorization(c*q);
					if not test in QSFs and test ne 1 then
						Append(~QSFs,test);
					end if;
				end for;
			else
				Append(~QSFs,c);
			end if;
		end for;
	end for;
	return Sort(QSFs);
end function;

//	returns a vector of all the isogenies of degree a with domain E.
function IsogeniesOfDegree(E,a)
	IsoClass := IsogenousCurves(E);
	Isogenies:= <>;
	for E1 in IsoClass do
		boo,phi := IsIsogenous(E,E1);
		if boo and Degree(phi) eq a then
			Isogenies := Isogenies cat <phi>;
		end if;
	end for;
	return Isogenies;
end function;

//	Given an isogenies, returns it kernel.
function FieldOfDefOfKerIsog(phi)
	E := Domain(phi);
	E1 := Codomain(phi);
	Pts := RationalPoints(ChangeRing(Pullback( phi, Identity(E1)),AlgebraicClosure(Rationals()) ));
	for p in Pts do
		K := Parent(p[1]);
		if Order(BaseChange(E,K)![p[i] : i in [1,2,3]]) eq Degree(phi) then
			Kx := NumberField(MinimalPolynomial(p[1]));
			P<y> := PolynomialRing(Kx);
			a := Roots(ChangeRing(MinimalPolynomial(p[1]),Kx))[1][1];
			g := Evaluate(DefiningPolynomial(E), [a,y,1]);
			if IsIrreducible(g) then
				return AbsoluteField(ext<Kx|g>);
			else
				return Kx;
			end if;
		end if;
	end for;
	return Pts;
end function;


function QuadsInKerofIsoPrimePowerDegree(E,a)
	assert IsPrimePower(a);
	prime := Factorization(a)[1][1];
	IsogDega := IsogeniesOfDegree(E,a);
	if #IsogDega eq 0 then return []; end if;
	if prime eq 2 and Integers(4)!a eq 0 then
		degree := 2^2;
	else
		degree := prime;
	end if;
	Quads := {};
	for PHI in IsogDega do
		if a eq degree then
			Isogs :=  IsogeniesOfDegree(E,degree);
		else
			DegaE :=  IsogeniesOfDegree(E,degree);
			DegbE1 := IsogeniesOfDegree(Codomain(PHI),a div degree);
			Isogs := [phi : phi in DegaE | true in {Codomain(phi) eq Codomain(psi) : psi in DegbE1}];
		end if;
		for phi in Isogs do
			QSFs := {q : q in QuadSubfields(FieldOfDefOfKerIsog(phi))};
			if not QSFs subset Quads then
				Quads := QSFs join Quads;
			end if;
		end for;
	end for;
	return [q : q in Quads];
end function;


///////////////////////////////////////////////////////////////////////////////
//
//	Doing the sanity check
//
///////////////////////////////////////////////////////////////////////////////

for k in Sort([k : k in Keys(MaxCleanGenus0WithModels)]) do
	time for i in [1..#MaxCleanGenus0WithModels[k]] do
		k,i;
		r := MaxCleanGenus0WithModels[k][i];
		j := r`jmap;
	 	test := [];
	 	JCHECK := [];
		JS := [Evaluate(j,rat) : rat in RatsByH(10) | Evaluate(Denominator(j), rat ) ne 0 and not Evaluate(j, rat) in CMj ];
		JS := Sort(JS, CompCond);
		for i in [1..3] do
			jEx := JS[i];
			rat := Roots(Numerator(j - jEx))[1][1];
			if r`containsmI then
				Ex := MinimalQuadraticTwist(EllipticCurveFromjInvariant(jEx));
			else
				EM := r`EM;
				As := aInvariants(EM);
				AsEx := [Evaluate(a,rat) : a in As];
				Ex := EllipticCurve(AsEx);
			end if;
				levs := r`entlevel;
				a := levs[1];
				b := levs[2];
				
			if not b in [7,13] then
				fa := DivisionPolynomial(Ex,a);
				fb := DivisionPolynomial(Ex,b);
				Ka := SplittingField(fa);
				Kb := SplittingField(fb);
				if r`containsmI then
					La := Ka;
					Lb := Kb;
					F := Compositum(Ka,Kb);
				else
					xa := Roots(ChangeRing(fa,Ka))[1][1];
					xb := Roots(ChangeRing(fb,Kb))[1][1];
					Pa<ya> := PolynomialRing(Ka);
					Pb<yb> := PolynomialRing(Kb);
					polEx := DefiningPolynomial(Ex);
					ga := Evaluate(polEx,[xa,ya,1]);
					gb := Evaluate(polEx,[xb,yb,1]);
					if IsIrreducible(ga) then
						La := AbsoluteField(ext<Ka| ga >);
					else
						La := Ka;
					end if;
					if IsIrreducible(gb) then
						Lb := AbsoluteField(ext<Kb| gb >);
					else
						Lb := Kb;
					end if;
				end if;
				F := Compositum(La,Lb);
				L := La meet Lb;
				Gal := (GaloisGroup(L));
				assert r`enttype[1] in [GroupName(Gal/N`subgroup) : N in NormalSubgroups(Gal)];
			end if;

			if b eq 7 and r`enttype[1] eq "C3" then
				f7 := DivisionPolynomial(Ex,7);
				fac7 := Factorization(f7);
				f73 := &* [pair[1] : pair in fac7 | Degree(pair[1]) eq 3];
				Kb := Compositum(SplittingField(f73),CyclotomicField(7));
				assert IsSquare(Discriminant(Ex)) and #TwoTorsionSubgroup(BaseChange(Ex,Kb)) eq 4;
			end if;

			if b eq 7 and not r`enttype[1] eq "C3" then
				polEx := DefiningPolynomial(Ex);
				Delta := Numerator(Discriminant(Ex))*Denominator(Discriminant(Ex));
				d := SquarefreeFactorization(Delta);
				assert d ne -7;
				f7 := DivisionPolynomial(Ex,7);
				fac7 := Factorization(f7);
				g7 := fac7[1][1];

				if Degree(g7) eq 1 then
					xb := Roots(g7)[1][1];
					P7<yb> := PolynomialRing(Rationals());
					h7 := Evaluate(polEx,[xb,yb,1]);
					QSF7isog := QuadSubfields(NumberField(h7));
				else
					K7 := NumberField(g7);
					xb := K7.1;
					P7<yb> := PolynomialRing(K7);
					h7 := Evaluate(polEx,[xb,yb,1]);
					if IsIrreducible(h7) then
						L7 := AbsoluteField(ext<K7|h7>);
					else
						L7 := K7;
					end if;
					QSF7isog := QuadSubfields(L7);
				end if;

				if not QSF7isog in [ [], [-7] ] then
					a1 := QSF7isog[1];
					a2 := SquarefreeFactorization(-7*a1);
					QSF7 := Sort([-7,a1,a2]);
					assert d in QSF7;
				else
					f7fac2 := fac7[2][1];
					K7 := NumberField(f7fac2);
					xb := K7.1;
					P7<yb> := PolynomialRing(K7);
					polEx := DefiningPolynomial(Ex);
					h7 := Evaluate(polEx,[xb,yb,1]);
					L7 := AbsoluteField(ext<K7|h7>);
					QSF7nonisog := QuadSubfields(L7);
					assert QSF7nonisog ne [-7];
					a1 := QSF7nonisog[1];
					a2 := SquarefreeFactorization(-7*a1);
					QSF7 := Sort([-7,a1,a2]);
					assert d in QSF7;
				end if;
			end if;

			if b eq 13 then
				Delta := Numerator(Discriminant(Ex))*Denominator(Discriminant(Ex));
				d := SquarefreeFactorization(Delta);
				f13 := DivisionPolynomial(Ex,13);
				fac13 := Factorization(f13);
				g13 := fac13[1][1];
				Kb<xb> := NumberField(g13);
				Pb<yb> := PolynomialRing(Kb);
				polEx := DefiningPolynomial(Ex);
				gb := Evaluate(polEx,[xb,yb,1]);
				Lb := AbsoluteField(ext<Kb|gb>);
				hb := DefiningPolynomial(Lb);
				a := SquarefreeFactorization(Integers()!Discriminant(hb));
				if r`EntInKerOfIsog then
					assert not IsIrreducible(ChangeRing(hb,QuadraticField(d)));
				else
					if not d eq 13 then
						assert not IsIrreducible(ChangeRing(hb,Compositum(QuadraticField(13),QuadraticField(d))));
					else
						//In this case there is automatically an explained entanglement and this is an error.
						assert false;
					end if;
				end if;
			end if;

		end for;
	end for;
end for;



	

				


