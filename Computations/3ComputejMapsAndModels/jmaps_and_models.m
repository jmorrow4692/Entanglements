///////////////////////////////////////////////////////////////////////////////
//
//	We are now determining j-maps and models for the genus 0 modular curves
//	The genus 1 positive rank cases are done by hand in Section 7 of the paper
//
///////////////////////////////////////////////////////////////////////////////


load "~/EntanglementGroups/AuxillaryFiles/Group_functions.m";
load "~/EntanglementGroups/AuxillaryFiles/Siegel_functions.m";
load "~/EntanglementGroups/AuxillaryFiles/[RZB15]/simplification.m";
load "~/EntanglementGroups/AuxillaryFiles/jsupArray.m";

load "~/EntanglementGroups/LoadableFiles/MaxClean_Some_Ex.m";

function CleanCurve(E)
	CD := Conductor(E);
	list1 := [pair[1] : pair in CD | #Conductor(QuadraticTwist(E,pair[1])) lt #CD ];
	list2 := [pair[1] : pair in CD | #Conductor(QuadraticTwist(E,pair[1]^-1)) lt #CD ];
	T := &* list1 / &* list2;
	return QuadraticTwist(E,T);
end function;

function ListToMap(list,K)
	P1 := list[1];
	P2 := list[2];
	P3 := list[3];
	F<t> := FunctionField(K);
	phi := (t-P1)/(t-P2);
	phi := phi * 1/(Evaluate(phi,P3));
	return phi;
end function;

MaxCleanGenus0WithModels := AssociativeArray();
MaxCleanGenus1rpWithModels := AssociativeArray();


printf "\n\n************************************************\n\n************************************************\n\n************************************************\n";


//This could be sped up be sorting the groups by how they intersect with SL(2,Z/nZ) and then only computing J1 once for each one.
for k in Sort([ k : k in Keys(MaxCleanGenus0GalSort) | not k in [<[ 2, 13 ], [ "C2", "C2" ]>,<[ 3, 5 ], [ "C2", "C2" ]>, <[2,3],[ "S3", "C3" ]>, <[2,5],[ "S3", "C3" ]>] ]) do
	for gal in [gal : gal in Keys(MaxCleanGenus0GalSort[k]) | not gal in [["GL2","3Nn"]]] do
		for r in MaxCleanGenus0GalSort[k][gal] do
			if r`containsmI then
            	print " ";
                printf "Entanglement level := %o,\nEntanglement type := %o,\nLabel := %o,\nGenerators := %o,\n",r`entlevel,r`enttype,r`label,r`gens;
				printf "j-map := ";
				//k,gal;
    			G := r`G;
				N := #BaseRing(r`G);
			    GLn := GL(2,Integers(N));
				SLn := SL(2,Integers(N));
				Orbs :=OrbitReps(G);
				Pow := 12*N;
				Divs := [PowerOrbitDivisorAtCusps(VecPowerOrbit(vec,Pow,G),G) : vec in Orbs];
				cusps, widths := CuspData(G); //widths;
				ncusps := #cusps;
				Vecs :=[Pow*IsoPoVec(k,ncusps) : k in [2..ncusps]];
				M := RMatrixSpace(Integers(),#Divs,#cusps)!Matrix(Divs);
				if ncusps gt 1 then
					//printf "\nSearching for a haputmodule...";
					for v in Vecs do
						boo,m := IsConsistent(M, v);
						if boo then
							//printf "Found it!\n";
							//printf "Computing the hauptmodule to the necessary precision...";
							list := &cat [SiegelPowerOrbitList(Orbs[i],G,m[i],150) : i in [1..#VecToSeq(m)]];
							h<q> := &* list;
							h := Coefficients(h)[1]^-1*h;
							R<q> := Parent(h);
							a,b,c := Coefficients(h);
							Co := Coefficients(h+O(q^(10/c)));
							h := h - Co[#Co];
							h := 1/Co[1]*h;
							L<x> := LaurentSeriesRing(Rationals());
							JJ := 1/x*L!jInvCoeff;
							j := R!JJ;
							//printf "Looking for an algebraic dependence between h and j over Q(zetaN)...";
							n :=0;
							f :=R!1;
							Pow :=[];
							PowJ :=[];
							dim := 0;
							max := Index(GL(2,Integers(N)), G );
							while dim eq 0 do
								Append(~Pow,f);
								Append(~PowJ,f*j);
								n := n+1;
								f := f*h;
								K := Parent(Coefficients(h)[1]);
								MinPow := Minimum([Valuation(h)*max,Valuation(h)*(-max)]);
								MaxPow := Ceiling((MinPow+2*max+1)/N);
								Coefs:= [FuncToVec(f,N,MinPow,MaxPow*5) : f in Pow];
								CoefsJ:= [FuncToVec(f,N,MinPow,MaxPow*5) : f in PowJ];
								M1 := Matrix(K,[VecToSeq(v) : v in Coefs]);
								MJ := Matrix(K,[VecToSeq(v) : v in CoefsJ]);
								V := VectorSpace(K,#VecToSeq(Coefs[1]));
								W := sub<V|Coefs>;
								WJ := sub<V|CoefsJ>;
								I := W meet WJ;
								dim := Dimension(I);
							end while;
							Ivec := I.1;
							//printf "Found it!\n";
							_,vec1 := IsConsistent(M1,Ivec);
							_,vec2 := IsConsistent(MJ,Ivec);
							J1 := VecsToRatFunc(vec1,vec2);
							list := [Roots(Numerator(J1 - jEx))[1][1] : jEx in r`jInvs];
							P1 := list[1];
							P2 := list[2];
							P3 := list[3];
                			psi := ListToMap( [P1,P2,P3],BaseRing( Parent(h) ) );
                			//printf "Looking for an algebraic dependence between h1 and j over Q...";
							h1 := Evaluate(psi,h);
                			n :=0;
							f :=R!1;
							Pow :=[];
                            PowJ :=[];
							dim := 0;
							max := Index(GL(2,Integers(N)), G );
							while dim eq 0 do
								Append(~Pow,f);
								Append(~PowJ,f*j);
								n := n+1;
								f := f*h1;
								K := Parent(Coefficients(h1)[1]);
								MinPow := Minimum([Valuation(h1)*max,Valuation(h1)*(-max)]);
								MaxPow := Ceiling((MinPow+2*max+3)/N);
								Coefs:= [FuncToVec(f,N,MinPow,MaxPow*5) : f in Pow];
								CoefsJ:= [FuncToVec(f,N,MinPow,MaxPow*5) : f in PowJ];
								M1 := Matrix(K,[VecToSeq(v) : v in Coefs]);
								MJ := Matrix(K,[VecToSeq(v) : v in CoefsJ]);
								V := VectorSpace(K,#VecToSeq(Coefs[1]));
								W := sub<V|Coefs>;
								WJ := sub<V|CoefsJ>;
								I := W meet WJ;
								dim := Dimension(I);
							end while;
							Ivec := I.1;
							//printf "Found it!\n";
							_,vec1 := IsConsistent(M1,Ivec);
							_,vec2 := IsConsistent(MJ,Ivec);
							Jmess := VecsToRatFunc(vec1,vec2);
                            J,trans := supersimplify(Jmess);
                            r1 := rec<EntanglementGroup |
                            	G := r`G,
    							gens := r`gens,
    							level := r`level,
								H := r`H,
    							entlevel := r`entlevel,
    							enttype := r`enttype,
    							label := r`label,
								NabG := r`NabG,
								index := r`index,
    							jmap := J,
    							jInvs := r`jInvs,
    							containsmI := r`containsmI,
								explained := r`explained,
    							EntInKerOfIsog := r`EntInKerOfIsog,
    							EM := CleanCurve(EllipticCurveFromjInvariant(J))
								//jEM : FldFunFracSchElt
            				>;
							if k in Keys(MaxCleanGenus0WithModels) then
                            	Append(~MaxCleanGenus0WithModels[k],r1);
                            else
                            	MaxCleanGenus0WithModels[k]:=[r1];
                            end if;
                            printf "%o\n\n",J;
                            print "************************************************";
							break v;
						end if;
        			end for;
				end if;
        	end if;
		end for;
	end for;
end for;


///////////////////////////////////////////////////////////////////////////////
//
//	Right now of the groups that contain -I we have skipped two
//	group in each of <[ 2, 13 ], [ "C2", "C2" ]>, <[ 3, 5 ], [ "C2", "C2" ]>,
//	as well as the two groups with key <[2,3],[ "C2", "C2" ]> and label
//	["GL2","3Nn"],  the one group with key <[2,5],[ "S3", "C2" ]> and the
//	one group with key <[2,3],[ "S3", "C2" ]>.
//	Lets add those groups by hand now.
//
///////////////////////////////////////////////////////////////////////////////

//	Lets start with the one group with key <[2,3],[ "S3", "C2" ]> and label ["GL2","GL3"].
//	This is the groups from Brau--Jones
k := <[2,3],[ "S3", "C3" ]>;
assert #MaxCleanGenus0[k] eq 1;
r := MaxCleanGenus0[k][1];
j1 := 2^10*3^3*t^3*(1-4*t^3);
r1 := rec<EntanglementGroup |
	G := r`G,
	gens := r`gens,
	level := r`level,
	H := r`H,
	entlevel := r`entlevel,
	enttype := r`enttype,
	label := r`label,
	NabG := r`NabG,
	index := r`index,
	jmap := j1,
	jInvs := r`jInvs,
	containsmI := r`containsmI,
	explained := r`explained,
	EntInKerOfIsog := r`EntInKerOfIsog,
	EM := CleanCurve(EllipticCurveFromjInvariant(j1))
	//jEM : FldFunFracSchElt
>;

MaxCleanGenus0WithModels[k] := [r1];

print " ";
printf "Entanglement level := %o,\nEntanglement type := %o,\nLabel := %o,\nGenerators := %o,\n",r`entlevel,r`enttype,r`label,r`gens;
printf "j-map := %o\n\n",r1`jmap;
print "************************************************";

//	Second we do the one group with key <[2,5],[ "S3", "C2" ]> and label ["GL2","5S4"].
//	Thanks To Jeremy Rouse for help with this case.

k := <[2,5],[ "S3", "C3" ]>;
assert #MaxCleanGenus0[k] eq 1;
r := MaxCleanGenus0[k][1];
jsup := Groups["5S4"]`jmap;
X :=(8*t^6 + 8*t^5 - 20*t^4 - 50*t^3 + 80*t^2 - 12*t + 3)/((t+1)^2*(t^2-3*t+1)^2);
j1 := Evaluate(jsup,X);

r1 := rec<EntanglementGroup |
	G := r`G,
	gens := r`gens,
	level := r`level,
	H := r`H,
	entlevel := r`entlevel,
	enttype := r`enttype,
	label := r`label,
	NabG := r`NabG,
	index := r`index,
	jmap := j1,
	jInvs := r`jInvs,
	containsmI := r`containsmI,
	explained := r`explained,
	EntInKerOfIsog := r`EntInKerOfIsog,
	EM := CleanCurve(EllipticCurveFromjInvariant(j1))
	//jEM : FldFunFracSchElt
>;

MaxCleanGenus0WithModels[k]:=[r1];

print " ";
printf "Entanglement level := %o,\nEntanglement type := %o,\nLabel := %o,\nGenerators := %o,\n",r`entlevel,r`enttype,r`label,r`gens;
printf "j-map := %o\n\n",r1`jmap;
print "************************************************";




//	Next we add the groups in <[2,3],[ "C2", "C2" ]> and of label ["GL2","3Nn"].
/*
E := EllipticCurveFromjInvariant(Groups["3Nn"]`jmap);
Delta := Discriminant(E);
d := (t-12)*(t^2 +12*t+144);
assert IsSquare(Delta*d);

//	Claim: Q(t)(sqrt(t^2 +12*t+144)) is in the 3-division field.

d1 := (t^2 +12*t+144);
K := ext<F|Polynomial([-d1,0,1])>;
f3 := DivisionPolynomial(E,3);
assert IsIrreducible(f3) and not IsIrreducible(ChangeRing(f3,K));
*/
//	Therefore, we are looking for t such that Delta = d1 ot -3*d1 mod squares.
//	In otherwords, (t-12) = s^2 or -3*s^2. solving for t and then switching the
//	vatiables we get that:

j1 := Evaluate(Groups["3Nn"]`jmap,t^2+12);
j2 := Evaluate(Groups["3Nn"]`jmap,-3*t^2+12);

//	We remark here that for any t, the field K as defined a few lines above is
//	the unique quadratic
//	subfield of Q(E[3]) in this case such that Q(E[3])/K is an abelain extension.
//	This allow us us to determine which group gets which j-map; j1 goes with the
//	group that has an abelain NabG.

S := MaxCleanGenus0GalSort[<[2,3],["C2","C2"]>][["GL2","3Nn"]];
assert #S eq 2;
assert {IsAbelian(r`NabG) : r in S} eq {false, true};

for r in S do
	k := <[2,3],["C2","C2"]>;
	if IsAbelian(r`NabG) then
		r1 := rec<EntanglementGroup |
        	G := r`G,
    		gens := r`gens,
    		level := r`level,
			H := r`H,
    		entlevel := r`entlevel,
    		enttype := r`enttype,
    		label := r`label,
			NabG := r`NabG,
			index := r`index,
    		jmap := j1,
    		jInvs := r`jInvs,
    		containsmI := r`containsmI,
			//explained := r`explained,
    		EntInKerOfIsog := r`EntInKerOfIsog,
    		EM := CleanCurve(EllipticCurveFromjInvariant(j1))
			//jEM : FldFunFracSchElt
        >;
	end if;
	if not IsAbelian(r`NabG) then
		r1 := rec<EntanglementGroup |
        	G := r`G,
    		gens := r`gens,
    		level := r`level,
			H := r`H,
    		entlevel := r`entlevel,
    		enttype := r`enttype,
    		label := r`label,
			NabG := r`NabG,
			index := r`index,
    		jmap := j2,
    		jInvs := r`jInvs,
    		containsmI := r`containsmI,
			//explained := r`explained,
    		EntInKerOfIsog := r`EntInKerOfIsog,
    		EM := CleanCurve(EllipticCurveFromjInvariant(j1))
			//jEM : FldFunFracSchElt
        >;
	end if;
	if k in Keys(MaxCleanGenus0WithModels) then
		Append(~MaxCleanGenus0WithModels[k],r1);
	else
		MaxCleanGenus0WithModels[k] := [r1];
	end if;
	print " ";
    printf "Entanglement level := %o,\nEntanglement type := %o,\nLabel := %o,\nGenerators := %o,\n",r`entlevel,r`enttype,r`label,r`gens;
	printf "j-map := %o\n\n",r1`jmap;
    print "************************************************";
end for;





//	Next the two groups in <[ 3, 5 ], [ "C2", "C2" ]> which are distingued by
// 	the ent in the kernel of the 5-isogn and which doesn't.


//	Let's let E be the generic elliptic curve with 3Nn and 5B images.
//	This was done using DGJ.
j := jsupArray[["3Nn","5B"]];
/*
E := CleanCurve(EllipticCurveFromjInvariant(j));
E := QuadraticTwist(E,25/36);
f3 := DivisionPolynomial(E,3); 
f5 := DivisionPolynomial(E,5);
//	Since there is a 5 isogeny, f5 factors and the qudratic fact defined
//	exactly th quadratic in the keren of the 5-isogeny that E has.
f5fac := Factorization(f5)[1][1];
Delta3 := Discriminant(f3);
Delta5 := Discriminant(f5fac);
*/
//	Examining the disciminanat, we see that there is a genus 0 condition that makes
//	Delta3 = Delta5 mod squares. That works out to be that j needs to be evaluate at X where

X := (t^2-4*t-1)/(5*t^2-5);
EM := EllipticCurveFromjInvariant(Evaluate(j,X));//
f5 := DivisionPolynomial(EM,5);
fac5 := Factorization(f5);
psi := fac5[1][1];
EM2,phi := IsogenyFromKernel(EM, psi);

//	The 5-isogenous curve, EM2, gives us the other group.
/*EM2 := EllipticCurveFromjInvariant((38477541376*t^36 - 103396995072*t^35 - 181467832320*t^34 + 389505024000*t^33 +
    751928094720*t^32 - 101115224064*t^31 - 2393711357952*t^30 - 2654552309760*t^29 + 
    3868803072000*t^28 + 7659193282560*t^27 - 98253398016*t^26 - 9960736739328*t^25 - 
    9637065523200*t^24 + 6463180800000*t^23 + 14345724211200*t^22 - 2558721761280*t^21 - 
    7313806909440*t^20 + 2273188147200*t^19 + 1307463680000*t^18 - 2273188147200*t^17 - 
    7313806909440*t^16 + 2558721761280*t^15 + 14345724211200*t^14 - 6463180800000*t^13 - 
    9637065523200*t^12 + 9960736739328*t^11 - 98253398016*t^10 - 7659193282560*t^9 + 
    3868803072000*t^8 + 2654552309760*t^7 - 2393711357952*t^6 + 101115224064*t^5 + 
    751928094720*t^4 - 389505024000*t^3 - 181467832320*t^2 + 103396995072*t + 
    38477541376)/(t^36 - 60*t^35 + 1662*t^34 - 28100*t^33 + 322713*t^32 - 2646432*t^31 + 
    15809104*t^30 - 68471904*t^29 + 206579700*t^28 - 379038096*t^27 + 160516680*t^26 + 
    1124437392*t^25 - 2747405180*t^24 + 1081188000*t^23 + 5247877680*t^22 - 
    6839936160*t^21 - 4582670610*t^20 + 11442166680*t^19 + 3397936500*t^18 - 
    11442166680*t^17 - 4582670610*t^16 + 6839936160*t^15 + 5247877680*t^14 - 
    1081188000*t^13 - 2747405180*t^12 - 1124437392*t^11 + 160516680*t^10 + 379038096*t^9 +
    206579700*t^8 + 68471904*t^7 + 15809104*t^6 + 2646432*t^5 + 322713*t^4 + 28100*t^3 + 
    1662*t^2 + 60*t + 1));
*/


j1 := jInvariant(EM);
j2 := jInvariant(EM2);
S := MaxCleanGenus0GalSort[ <[ 3, 5 ], [ "C2", "C2" ] >][["3Nn","5B"]];
assert #S eq 2;
for r in MaxCleanGenus0GalSort[ <[ 3, 5 ], [ "C2", "C2" ] >][["3Nn","5B"]] do
	k :=  <[ 3, 5 ], [ "C2", "C2" ] >;
	if r`EntInKerOfIsog then
		r1 := rec<EntanglementGroup |
        	G := r`G,
    		gens := r`gens,
    		level := r`level,
			H := r`H,
    		entlevel := r`entlevel,
    		enttype := r`enttype,
    		label := r`label,
			NabG := r`NabG,
			index := r`index,
    		jmap := j1,
    		jInvs := r`jInvs,
    		containsmI := r`containsmI,
			//explained := r`explained,
    		EntInKerOfIsog := r`EntInKerOfIsog,
    		EM := CleanCurve(EllipticCurveFromjInvariant(j1))
			//jEM : FldFunFracSchElt
        >;
	end if;
    if not r`EntInKerOfIsog then
		r1 := rec<EntanglementGroup |
        	G := r`G,
    		gens := r`gens,
    		level := r`level,
			H := r`H,
    		entlevel := r`entlevel,
    		enttype := r`enttype,
    		label := r`label,
			NabG := r`NabG,
			index := r`index,
    		jmap := j2,
    		jInvs := r`jInvs,
    		containsmI := r`containsmI,
			//explained := r`explained,
    		EntInKerOfIsog := r`EntInKerOfIsog,
    		EM := CleanCurve(EllipticCurveFromjInvariant(j2))
			//jEM : FldFunFracSchElt
        >;
	end if;
	if k in Keys(MaxCleanGenus0WithModels) then
		Append(~MaxCleanGenus0WithModels[k],r1);
	else
		MaxCleanGenus0WithModels[k] := [r1];
	end if;
	print " ";
    printf "Entanglement level := %o,\nEntanglement type := %o,\nLabel := %o,\nGenerators := %o,\n",r`entlevel,r`enttype,r`label,r`gens;
	printf "j-map := %o\n\n",r1`jmap;
    print "************************************************";
end for;




//	Next we deal with the two groups in <[ 2, 13 ], [ "C2", "C2" ]> which are distingued by
// 	the ent in the kernel of the 13-isogn and which doesn't. They both have galois images [GL2,13B]
/*
//	Let E be the generic elliptic curve with a 12 isogeny.
E := CleanCurve(EllipticCurveFromjInvariant(Groups["13B"]`jmap));
E := QuadraticTwist(E,1/36); 
Delta := Discriminant(E);
d := t*(t^2 + 6*t + 13);
assert IsSquare(Delta*d);
//Thus Q(t)(sqrt(Delta)) = Q(t)(sqrt(d)). Clealy d is nicer to work with.

f13 := DivisionPolynomial(E,13);
fac13 := Factorization(f13);
f13fac := fac13[1][1];
K<s> := ext<F|Polynomial([-d/t,0,1])>;
assert not IsIrreducible(ChangeRing(f13fac,K));
*/
//  So we start over again now starting with t^2 and 13*t^2 in for t.
//  By inspection this is condition needed in order for Q(sqrt(Delta)) 
//  to be in Q(E[7]), which already contained Q(sqrt(13)).
// 	We only verify that j1 is correct as verifying j2 after that would 
//  amount to verifying Q(zeta_13) subet Q(E[13]).

j1 := Evaluate(Groups["13B"]`jmap,t^2);
j2 := Evaluate(Groups["13B"]`jmap,13*t^2);
assert #MaxCleanGenus0GalSort[ < [ 2, 13 ], [ "C2", "C2" ] >] [["GL2","13B"]] eq 2;
for r in MaxCleanGenus0GalSort[ < [ 2, 13 ], [ "C2", "C2" ] >] [["GL2","13B"]] do
	k := < [ 2, 13 ], [ "C2", "C2" ] >;
	if r`EntInKerOfIsog then
		r1 := rec<EntanglementGroup |
        	G := r`G,
    		gens := r`gens,
    		level := r`level,
			H := r`H,
    		entlevel := r`entlevel,
    		enttype := r`enttype,
    		label := r`label,
			NabG := r`NabG,
			index := r`index,
    		jmap := j1,
    		jInvs := r`jInvs,
    		containsmI := r`containsmI,
			//explained := r`explained,
    		EntInKerOfIsog := r`EntInKerOfIsog,
    		EM := CleanCurve(EllipticCurveFromjInvariant(j1))
			//jEM : FldFunFracSchElt
        >;
	end if;
    if not r`EntInKerOfIsog then
		r1 := rec<EntanglementGroup |
        	G := r`G,
    		gens := r`gens,
    		level := r`level,
			H := r`H,
    		entlevel := r`entlevel,
    		enttype := r`enttype,
    		label := r`label,
			NabG := r`NabG,
			index := r`index,
    		jmap := j2,
    		jInvs := r`jInvs,
    		containsmI := r`containsmI,
			//explained := r`explained,
    		EntInKerOfIsog := r`EntInKerOfIsog,
    		EM := CleanCurve(EllipticCurveFromjInvariant(j2))
			//jEM : FldFunFracSchElt
        >;
	end if;
	if k in Keys(MaxCleanGenus0WithModels) then
		Append(~MaxCleanGenus0WithModels[k],r1);
	else
		MaxCleanGenus0WithModels[k] := [r1];
	end if;
    print " ";
    printf "Entanglement level := %o,\nEntanglement type := %o,\nLabel := %o,\nGenerators := %o,\n",r`entlevel,r`enttype,r`label,r`gens;
	printf "j-map := %o\n\n",r1`jmap;
    print "************************************************";
end for;


///////////////////////////////////////////////////////////////////////////////
//
//	Now, we are on to the groups that don't contain -I. See the subsection about
//	the constellation of entangelments an indepth worked out example.
//
///////////////////////////////////////////////////////////////////////////////




ToDo := [];
for k in Sort([k : k in Keys( MaxCleanGenus0GalSort )]) do
	for gal in Keys(MaxCleanGenus0GalSort[k]) do
    	for r in MaxCleanGenus0GalSort[k][gal] do
			if not r`containsmI and not <k,gal> in ToDo then
				Append(~ToDo,<k,gal>);
        	end if;
        end for;
    end for;
end for;
assert ToDo eq [
    <<[ 2, 3 ], [ "C2", "C2" ]>, [ "GL2", "3B" ]>,
    <<[ 2, 5 ], [ "C2", "C2" ]>, [ "GL2", "5B.4.2" ]>,
    <<[ 2, 5 ], [ "C2", "C2" ]>, [ "GL2", "5B.4.1" ]>,
    <<[ 2, 7 ], [ "C2", "C2" ]>, [ "GL2", "7B" ]>,
    <<[ 2, 13 ], [ "C2", "C2" ]>, [ "GL2", "13B.4.1" ]>,
    <<[ 2, 13 ], [ "C2", "C2" ]>, [ "GL2", "13B.4.2" ]>
];

print "************************************************";
print "************************************************";
print "************************************************";
print "************************************************";
printf "\n\n\nNow to deal with the groups that do not contain\n -I. ";
printf "For the sake fo brevity we only print the \nj-invariant for each group (so you will see redundency),\n";
printf "but we do record a fine model for each group in \nMaxCleanGenus0WithModels\n\n\n\n";
print "************************************************";
print "************************************************";
print "************************************************";
print "************************************************";
print "************************************************";
print " ";

for pair in ToDo do
	k := pair[1];
	if pair eq <<[ 2, 3 ], [ "C2", "C2" ]>, [ "GL2", "3B" ]> then
		// The curve E is the generic elliptic curve with a point of order 3 from Zywina.
        E := EllipticCurve([-3*(t+1)*(t+3)*(t^2+3), -2*(t^2-3)*(t^4+6*t^3+18*t^2+18*t+9)]);
		S := MaxCleanGenus0GalSort[pair[1]][pair[2]];
		Delta := Discriminant(E);
		d := 3*t*(t^2 + 3*t + 3);
		assert IsSquare(Delta*d);
        for r in S do
			if EntanglementContainedInKerOfIsog(r`G) then
            	r1 := rec<EntanglementGroup |
	        		G := r`G,
    				gens := r`gens,
    				level := r`level,
					H := r`H,
		    		entlevel := r`entlevel,
	    			enttype := r`enttype,
    				label := r`label,
					NabG := r`NabG,
					index := r`index,
		    		jmap := jInvariant(E),
	    			jInvs := r`jInvs,
    				containsmI := r`containsmI,
					//explained := r`explained,
	    			EntInKerOfIsog := r`EntInKerOfIsog,
    				EM := QuadraticTwist(E,d)
					//jEM : FldFunFracSchElt
        		>;
			end if;
			if not EntanglementContainedInKerOfIsog(r`G) then
            	r1 := rec<EntanglementGroup |
	        		G := r`G,
    				gens := r`gens,
    				level := r`level,
					H := r`H,
		    		entlevel := r`entlevel,
	    			enttype := r`enttype,
    				label := r`label,
					NabG := r`NabG,
					index := r`index,
		    		jmap := jInvariant(E),
	    			jInvs := r`jInvs,
    				containsmI := r`containsmI,
					//explained := r`explained,
	    			EntInKerOfIsog := r`EntInKerOfIsog,
    				EM := QuadraticTwist(E,-3*d)
					//jEM : FldFunFracSchElt
        		>;
			end if;
            if k in Keys(MaxCleanGenus0WithModels) then
                Append(~MaxCleanGenus0WithModels[k],r1);
            else
                MaxCleanGenus0WithModels[k] := [r1];
            end if;
            print " ";
    		printf "Entanglement level := %o,\nEntanglement type := %o,\nLabel := %o,\nGenerators := %o,\n",r`entlevel,r`enttype,r`label,r`gens;
			printf "j-map := %o\n\n",r1`jmap;
    		print "************************************************";
		end for;
	end if;
    if pair eq <<[ 2, 5 ], [ "C2", "C2" ]>, [ "GL2", "5B.4.2" ]> then
		//Rat point of order 5
		E := EllipticCurve([-27*(t^4 -12*t^3 +14*t^2 +12*t+1), 54*(t^6 -18*t^5 +75*t^4 +75*t^2 +18*t+1)]);
		S := MaxCleanGenus0GalSort[pair[1]][pair[2]];
		Delta := Discriminant(E);
		d := t* (t^2-11*t-1);
		assert IsSquare(Delta*d);
        for r in S do
			if EntanglementContainedInKerOfIsog(IsogGroup(r`G,5)) then
            	r1 := rec<EntanglementGroup |
	        		G := r`G,
    				gens := r`gens,
    				level := r`level,
					H := r`H,
		    		entlevel := r`entlevel,
	    			enttype := r`enttype,
    				label := r`label,
					NabG := r`NabG,
					index := r`index,
		    		jmap := jInvariant(E),
	    			jInvs := r`jInvs,
    				containsmI := r`containsmI,
					//explained := r`explained,
	    			EntInKerOfIsog := r`EntInKerOfIsog,
    				EM := QuadraticTwist(E,d)
					//jEM : FldFunFracSchElt
        		>;
			end if;
			if not EntanglementContainedInKerOfIsog(IsogGroup(r`G,5)) then
            	r1 := rec<EntanglementGroup |
	        		G := r`G,
    				gens := r`gens,
    				level := r`level,
					H := r`H,
		    		entlevel := r`entlevel,
	    			enttype := r`enttype,
    				label := r`label,
					NabG := r`NabG,
					index := r`index,
		    		jmap := jInvariant(E),
	    			jInvs := r`jInvs,
    				containsmI := r`containsmI,
					//explained := r`explained,
	    			EntInKerOfIsog := r`EntInKerOfIsog,
    				EM := QuadraticTwist(E,5*d)
					//jEM : FldFunFracSchElt
        		>;
			end if;
            if k in Keys(MaxCleanGenus0WithModels) then
				Append(~MaxCleanGenus0WithModels[k],r1);
			else
				MaxCleanGenus0WithModels[k] := [r1];
			end if;
			print " ";
    		printf "Entanglement level := %o,\nEntanglement type := %o,\nLabel := %o,\nGenerators := %o,\n",r`entlevel,r`enttype,r`label,r`gens;
			printf "j-map := %o\n\n",r1`jmap;
    		print "************************************************";
		end for;
	end if;
	if pair eq <<[ 2, 5 ], [ "C2", "C2" ]>, [ "GL2", "5B.4.1" ]> then
		//	The Curve E is the generic elliptic curve with a 5-Isog
        //	and the isogenous curve has a rat point of order 5.
		E := EllipticCurve([-27*(t^4 +228*t^3 +494*t^2 -228*t+1), 54*(t^6 -522*t^5 -10005*t^4 -10005*t^2 +522*t+1)]);
		S := MaxCleanGenus0GalSort[pair[1]][pair[2]];
		Delta := Discriminant(E);
		d := t* (t^2-11*t-1);
		assert IsSquare(Delta*d);
        for r in S do
			if EntanglementContainedInKerOfIsog(r`G) then
            	r1 := rec<EntanglementGroup |
	        		G := r`G,
    				gens := r`gens,
    				level := r`level,
					H := r`H,
		    		entlevel := r`entlevel,
	    			enttype := r`enttype,
    				label := r`label,
					NabG := r`NabG,
					index := r`index,
		    		jmap := jInvariant(E),
	    			jInvs := r`jInvs,
    				containsmI := r`containsmI,
					//explained := r`explained,
	    			EntInKerOfIsog := r`EntInKerOfIsog,
    				EM := QuadraticTwist(E,d)
					//jEM : FldFunFracSchElt
        		>;
			end if;
			if not EntanglementContainedInKerOfIsog(r`G) then
            	r1 := rec<EntanglementGroup |
	        		G := r`G,
    				gens := r`gens,
    				level := r`level,
					H := r`H,
		    		entlevel := r`entlevel,
	    			enttype := r`enttype,
    				label := r`label,
					NabG := r`NabG,
					index := r`index,
		    		jmap := jInvariant(E),
	    			jInvs := r`jInvs,
    				containsmI := r`containsmI,
					//explained := r`explained,
	    			EntInKerOfIsog := r`EntInKerOfIsog,
    				EM := QuadraticTwist(E,5*d)
					//jEM : FldFunFracSchElt
        		>;

			end if;
            if k in Keys(MaxCleanGenus0WithModels) then
                Append(~MaxCleanGenus0WithModels[k],r1);
            else
				MaxCleanGenus0WithModels[k] := [r1];
			end if;
            print " ";
    		printf "Entanglement level := %o,\nEntanglement type := %o,\nLabel := %o,\nGenerators := %o,\n",r`entlevel,r`enttype,r`label,r`gens;
			printf "j-map := %o\n\n",r1`jmap;
    		print "************************************************";
		end for;
	end if;
	if pair eq <<[ 2, 7 ], [ "C2", "C2" ]>, [ "GL2", "7B" ]> then
		//Point of order 7 over a cubic.
		E := EllipticCurve([-27*(t^2 +13*t+49)^3*(t^2 +245*t+2401),  54*(t^2 + 13*t + 49)^4*(t^4 - 490*t^3 - 21609*t^2 - 235298*t - 823543)]);
		S := MaxCleanGenus0GalSort[pair[1]][pair[2]];
		Delta := Discriminant(E);
		d := t;
		assert IsSquare(Delta*d);
        for r in S do
			if EntanglementContainedInKerOfIsog(r`G) then
            	r1 := rec<EntanglementGroup |
	        		G := r`G,
    				gens := r`gens,
    				level := r`level,
					H := r`H,
		    		entlevel := r`entlevel,
	    			enttype := r`enttype,
    				label := r`label,
					NabG := r`NabG,
					index := r`index,
		    		jmap := jInvariant(E),
	    			jInvs := r`jInvs,
    				containsmI := r`containsmI,
					//explained := r`explained,
	    			EntInKerOfIsog := r`EntInKerOfIsog,
    				EM := QuadraticTwist(E,d)
					//jEM : FldFunFracSchElt
        		>;
			end if;
			if not EntanglementContainedInKerOfIsog(r`G) then
            	r1 := rec<EntanglementGroup |
	        		G := r`G,
    				gens := r`gens,
    				level := r`level,
					H := r`H,
		    		entlevel := r`entlevel,
	    			enttype := r`enttype,
    				label := r`label,
					NabG := r`NabG,
					index := r`index,
		    		jmap := jInvariant(E),
	    			jInvs := r`jInvs,
    				containsmI := r`containsmI,
					//explained := r`explained,
	    			EntInKerOfIsog := r`EntInKerOfIsog,
    				EM := QuadraticTwist(E,-7*d)
					//jEM : FldFunFracSchElt
        		>;
			end if;
            if k in Keys(MaxCleanGenus0WithModels) then
                Append(~MaxCleanGenus0WithModels[k],r1);
			else
				MaxCleanGenus0WithModels[k] := [r1];
			end if;
            print " ";
    		printf "Entanglement level := %o,\nEntanglement type := %o,\nLabel := %o,\nGenerators := %o,\n",r`entlevel,r`enttype,r`label,r`gens;
			printf "j-map := %o\n\n",r1`jmap;
    		print "************************************************";
		end for;
	end if;
	if pair eq <<[ 2, 13 ], [ "C2", "C2" ]>, [ "GL2", "13B.4.1" ]> then
		//  level 13 H_{5,1} from Zwyina
		E := EllipticCurve([-27*t^20 + 216*t^19 - 1080*t^18 + 3888*t^17 - 9936*t^16 + 20628*t^15 - 30024*t^14 + 35208*t^13 - 26352*t^12 + 10800*t^11 - 13338*t^10 - 10800*t^9 - 26352*t^8 - 35208*t^7 - 30024*t^6 - 20628*t^5 -
        9936*t^4 - 3888*t^3 - 1080*t^2 - 216*t - 27,
    54*t^30 - 648*t^29 + 4536*t^28 - 22896*t^27 + 88128*t^26 - 274428*t^25 + 695304*t^24 - 1457352*t^23 + 2528496*t^22 - 3565296*t^21 + 4171986*t^20 - 3683880*t^19 + 2946024*t^18 - 1375704*t^17 +
        1493640*t^16 + 1493640*t^14 + 1375704*t^13 + 2946024*t^12 + 3683880*t^11 + 4171986*t^10 + 3565296*t^9 + 2528496*t^8 + 1457352*t^7 + 695304*t^6 + 274428*t^5 + 88128*t^4 + 22896*t^3 + 4536*t^2 +
        648*t + 54]);
		S := MaxCleanGenus0GalSort[pair[1]][pair[2]];
		Delta := Discriminant(E);
		d := t * (t^2 - 3*t - 1);
		assert IsSquare(Delta*d);
        for r in S do
			if EntanglementContainedInKerOfIsog(r`G) then
            	r1 := rec<EntanglementGroup |
	        		G := r`G,
    				gens := r`gens,
    				level := r`level,
					H := r`H,
		    		entlevel := r`entlevel,
	    			enttype := r`enttype,
    				label := r`label,
					NabG := r`NabG,
					index := r`index,
		    		jmap := jInvariant(E),
	    			jInvs := r`jInvs,
    				containsmI := r`containsmI,
					//explained := r`explained,
	    			EntInKerOfIsog := r`EntInKerOfIsog,
    				EM := QuadraticTwist(E,d)
					//jEM : FldFunFracSchElt
        		>;
			end if;
			if not EntanglementContainedInKerOfIsog(r`G) then
            	r1 := rec<EntanglementGroup |
	        		G := r`G,
    				gens := r`gens,
    				level := r`level,
					H := r`H,
		    		entlevel := r`entlevel,
	    			enttype := r`enttype,
    				label := r`label,
					NabG := r`NabG,
					index := r`index,
		    		jmap := jInvariant(E),
	    			jInvs := r`jInvs,
    				containsmI := r`containsmI,
					//explained := r`explained,
	    			EntInKerOfIsog := r`EntInKerOfIsog,
    				EM := QuadraticTwist(E,13*d)
					//jEM : FldFunFracSchElt
        		>;
			end if;
            if k in Keys(MaxCleanGenus0WithModels) then
                Append(~MaxCleanGenus0WithModels[k],r1);
			else
				MaxCleanGenus0WithModels[k] := [r1];
			end if;
            print " ";
    		printf "Entanglement level := %o,\nEntanglement type := %o,\nLabel := %o,\nGenerators := %o,\n",r`entlevel,r`enttype,r`label,r`gens;
			printf "j-map := %o\n\n",r1`jmap;
    		print "************************************************";
		end for;
	end if;
    if pair eq <<[ 2, 13 ], [ "C2", "C2" ]>, [ "GL2", "13B.4.2" ]> then
		//	level 13 H_{4,1} from Zwyina
		E := EllipticCurve([
    -27*t^20 - 6264*t^19 - 14040*t^18 - 41472*t^17 - 437616*t^16 + 234468*t^15 - 3788424*t^14 + 1959768*t^13 - 13686192*t^12 + 2751840*t^11 - 22084218*t^10 - 2751840*t^9 - 13686192*t^8 - 1959768*t^7 -
        3788424*t^6 - 234468*t^5 - 437616*t^4 + 41472*t^3 - 14040*t^2 + 6264*t - 27,
    54*t^30 - 27864*t^29 - 594216*t^28 + 330912*t^27 - 15969312*t^26 + 8353044*t^25 - 192483864*t^24 + 99922248*t^23 - 1547749296*t^22 + 989791488*t^21 - 8396754030*t^20 + 4763361816*t^19 -
        26994019608*t^18 + 8196518952*t^17 - 47789802360*t^16 - 47789802360*t^14 - 8196518952*t^13 - 26994019608*t^12 - 4763361816*t^11 - 8396754030*t^10 - 989791488*t^9 - 1547749296*t^8 - 99922248*t^7 -
        192483864*t^6 - 8353044*t^5 - 15969312*t^4 - 330912*t^3 - 594216*t^2 + 27864*t + 54 ]);
		S := MaxCleanGenus0GalSort[pair[1]][pair[2]];
		Delta := Discriminant(E);
		d := t * (t^2 - 3*t - 1);
		assert IsSquare(Delta*d);
        for r in S do
			if EntanglementContainedInKerOfIsog(IsogGroup(r`G,13)) then
            	r1 := rec<EntanglementGroup |
	        		G := r`G,
    				gens := r`gens,
    				level := r`level,
					H := r`H,
		    		entlevel := r`entlevel,
	    			enttype := r`enttype,
    				label := r`label,
					NabG := r`NabG,
					index := r`index,
		    		jmap := jInvariant(E),
	    			jInvs := r`jInvs,
    				containsmI := r`containsmI,
					//explained := r`explained,
	    			EntInKerOfIsog := r`EntInKerOfIsog,
    				EM := QuadraticTwist(E,d)
					//jEM : FldFunFracSchElt
        		>;
			end if;
			if not EntanglementContainedInKerOfIsog(IsogGroup(r`G,13)) then
            	r1 := rec<EntanglementGroup |
	        		G := r`G,
    				gens := r`gens,
    				level := r`level,
					H := r`H,
		    		entlevel := r`entlevel,
	    			enttype := r`enttype,
    				label := r`label,
					NabG := r`NabG,
					index := r`index,
		    		jmap := jInvariant(E),
	    			jInvs := r`jInvs,
    				containsmI := r`containsmI,
					//explained := r`explained,
	    			EntInKerOfIsog := r`EntInKerOfIsog,
    				EM := QuadraticTwist(E,13*d)
					//jEM : FldFunFracSchElt
        		>;
			end if;
            if k in Keys(MaxCleanGenus0WithModels) then
					Append(~MaxCleanGenus0WithModels[k],r1);
				else
					MaxCleanGenus0WithModels[k] := [r1];
            end if;
            print " ";
    		printf "Entanglement level := %o,\nEntanglement type := %o,\nLabel := %o,\nGenerators := %o,\n",r`entlevel,r`enttype,r`label,r`gens;
			printf "j-map := %o\n\n",r1`jmap;
    		print "************************************************";
		end for;
	end if;
end for;



printf "\nLast we compute models and j-maps for each of the 2 genus 1 groups.";


assert [k : k in Keys(MaxCleanGenus1rp) | IsPrime(k[1][1]) and IsPrime(k[1][2])] eq [ <[ 2, 7 ], [ "C2", "C2" ]>];
assert #MaxCleanGenus1rp[ <[ 2, 7 ], [ "C2", "C2" ]>] eq 2;
assert {r`label : r in MaxCleanGenus1rp[ <[ 2, 7 ], [ "C2", "C2" ]>]} eq { [ "GL2", "7Nn" ], [ "GL2", "7Ns" ]};


//  These still need to get into the array and we need to deal with how to print them.

printf "\n\nWe now deal with the 2 genus 1 groups we found...\n\n";

for r in MaxCleanGenus1rp[ <[ 2, 7 ], [ "C2", "C2" ]>] do
	k :=  <[ 2, 7 ], [ "C2", "C2" ]>;
	if r`label eq [ "GL2", "7Ns" ] then
		js := Groups["7Ns"]`jmap;
		/* The code commented out below justifys the moduli space being isomorphic to C.
		Es :=CleanCurve( EllipticCurveFromjInvariant(js) );
		Es := QuadraticTwist(Es,1/36);
		Delta := Discriminant(Es);
		d := (t^3 - 4*t^2 + 3*t + 1)*(t^4 - 10*t^3 + 27*t^2 - 10*t - 27);
		assert IsSquare(Delta*d);
		f7 := DivisionPolynomial(Es,7);
		facs := Factorization(f7);
		f7fac := facs[1][1];
		d2 := (t^4 - 10*t^3 + 27*t^2 - 10*t - 27);
		K<a> := ext<F|Polynomial([-d2,0,1])>;
		assert not IsIrreducible(ChangeRing(f7fac,K));
		*/
		A<x,y> := AffineSpace(Rationals(),2);
		C := ProjectiveClosure(Curve(A,y^2-(x^3 - 4*x^2 + 3*x + 1) ));
		Xs,mp := EllipticCurve(C,C![0,1,0]);
		assert CremonaReference(Xs) eq "196a1";
		FF<x,y> := FunctionField(Rationals(),2);
		jfunc := Evaluate(js,x);
		r1 := rec<EntanglementGroup |
        	G := r`G,
    		gens := r`gens,
    		level := r`level,
			H := r`H,
    		entlevel := r`entlevel,
    		enttype := r`enttype,
    		label := r`label,
			NabG := r`NabG,
			index := r`index,
    		//jmap := j2,
    		jInvs := r`jInvs,
    		containsmI := r`containsmI,
			explained := r`explained,
    		EntInKerOfIsog := r`EntInKerOfIsog,
    		EM := Xs,
			jEM := jfunc
        >;
		if k in Keys(MaxCleanGenus1rpWithModels) then
            Append(~MaxCleanGenus1rpWithModels[k],r1);
        else
			MaxCleanGenus1rpWithModels[k] := [r1];
        end if;
	end if;
    if r`label eq [ "GL2", "7Nn" ] then
		jn := Groups["7Nn"]`jmap;
		/* The code commented out below justifys the moduli space being isomorphic to C.
		En := CleanCurve(EllipticCurveFromjInvariant(jn));
		En := QuadraticTwist(En,7/(9*5));
		Delta := Discriminant(En);
		d := 2*(t-3)*(t^3-7*t^2+7*t+7)*(t^4 - 7*t^3 + 21/2*t^2 + 14*t + 7/2);
		assert IsSquare(Delta*d);
		f7 := DivisionPolynomial(En,7);
		d2 :=  14*(t^4 - 7*t^3 + 21/2*t^2 + 14*t + 7/2);
		K<a> := ext<F| Polynomial([-d2,0,1])>;
		assert IsIrreducible(f7) and not IsIrreducible(ChangeRing(f7,K));
		*/
		A<x,y> := AffineSpace(Rationals(),2);
		C := ProjectiveClosure(Curve(A,y^2-(-(x-3)*(x^3-7*x^2+7*x+7)) ));
		Xn,mp := EllipticCurve(C,C![3,0,1]);
		P<X,Y,Z> := AmbientSpace(Xn);
		mpinvpoly := [512*X^2+12288*Y^2+112*X*Z+3*Z^2, -4096*X*Y-512*Y*Z, 4096*Y^2+16*X*Z+Z^2];
		mpinv := map<Xn-> C | mpinvpoly>;
		_,mp2 := IsIsomorphic(Xn,Xs);
		assert CremonaReference(Xn) eq "196a1";
		invpol := DefiningPolynomials(Inverse(mp2)*mpinv);
		assert invpol[1] eq 2*X^2 + 3*Y^2 - X*Z - 3*Z^2;
		FF<x1,y1> := FunctionField(Xs);
		phi := 2*x1^2 + 3*y1^2 - x1*1 - 3*1^2;
		jinff := Evaluate(jn,phi);
        jfunc := Evaluate(FunctionField(Rationals())!jinff,x);
        FF2<x,y> := FunctionField(Rationals(),2);
    	r1 := rec<EntanglementGroup |
            G := r`G,
    		gens := r`gens,
    		level := r`level,
			H := r`H,
    		entlevel := r`entlevel,
    		enttype := r`enttype,
    		label := r`label,
			NabG := r`NabG,
			index := r`index,
    		//jmap := j2,
    		jInvs := r`jInvs,
    		containsmI := r`containsmI,
			explained := r`explained,
    		EntInKerOfIsog := r`EntInKerOfIsog,
    		EM := Xs,
			jEM := FF2!jfunc
        >;
		if k in Keys(MaxCleanGenus1rpWithModels) then
            Append(~MaxCleanGenus1rpWithModels[k],r1);
        else
			MaxCleanGenus1rpWithModels[k] := [r1];
        end if;
	end if;
    print " ";
    printf "Entanglement level := %o,\nEntanglement type := %o,\nLabel := %o,\nGenerators := %o,\n",r`entlevel,r`enttype,r`label,r`gens;
	printf "Model for X_G := %o\nj-map := \%o\n\n",r1`EM,Numerator(r1`jEM);
    print "************************************************";
end for;


printf "We now check that every element of MaxCleanGenus0 and MaxCleanGenus1rp\nhas a model...";

assert [k : k in Keys(MaxCleanGenus0) | #MaxCleanGenus0[k] ne #MaxCleanGenus0WithModels[k] ] eq [];
assert [k : k in Keys(MaxCleanGenus1rp) | #MaxCleanGenus1rp[k] ne #MaxCleanGenus1rpWithModels[k]] eq [];

printf "Done!\n\n";

//A function that takes as its input an Array, directory, name for the printed directory
function PrintEntanglementArray(Array,Dir, NewName)
	keys := [k : k in Keys(Array)];
    k1 := keys[1];
	fprintf Dir, "%o := %o;\n\n", "EntaglementGroup", Format(Array[k1][1]);
	fprintf Dir, "%o := AssociativeArray();\n\n", NewName;
    for k in keys do
    	N := #BaseRing(Array[k][1]`G);
        fprintf Dir, "F<t> := FunctionField(Rationals());\n";
		fprintf Dir, "FF<x,y> := FunctionField(Rationals(),2);\n";
		fprintf Dir, "%o[<%o,[ \"%o\", \"%o\" ]>] := [",NewName,k[1],k[2][1],k[2][2];
        for i in [ 1..#Array[k] ] do
        	r := Array[k][i];
			fprintf Dir, "rec<EntaglementGroup |";
        		fprintf Dir, "G:=sub<GL( 2,Integers(%o) ) | %o>, ",r`level,[[A[1,1],A[1,2],A[2,1],A[2,2]] : A in Generators(r`G)];
				fprintf Dir, "gens := %o, ", [[A[1,1],A[1,2],A[2,1],A[2,2]] : A in Generators(r`G)];
				fprintf Dir, "level := %o, ", r`level;
				fprintf Dir, "H:=sub<SL(2,Integers(%o)) | %o>, ",#BaseRing(r`H),[[A[1,1],A[1,2],A[2,1],A[2,2]] : A in Generators(r`H)];
				fprintf Dir, "entlevel := %o, ", r`entlevel;
				fprintf Dir, "enttype := [\"%o\", \"%o\"], ",(r`enttype)[1],(r`enttype)[2];
				fprintf Dir, "label := [\"%o\", \"%o\"], ",(r`label)[1],(r`label)[2];
				fprintf Dir, "NabG := sub<GL(2,Integers(%o)) | %o>, ",#BaseRing(r`NabG),[[A[1,1],A[1,2],A[2,1],A[2,2]] : A in Generators(r`NabG)];
				fprintf Dir, "index := %o, ", r`index;
				if assigned r`jmap then
                	fprintf Dir, "jmap := %o, ",r`jmap;
                end if;
				if assigned r`jInvs then
                	fprintf Dir, "jInvs := %o, ",r`jInvs;
                end if;
				fprintf Dir, "containsmI := %o, ",r`containsmI;
				if assigned r`explained then
					fprintf Dir, "explained := %o, ",r`explained;
				end if;

				if assigned r`EM then
					fprintf Dir, "EM := EllipticCurve(%o),",aInvariants(r`EM);
				end if;
				if assigned r`jEM then
					FF<x,y> := FunctionField(Rationals(),2);
					fprintf Dir, "jEM := FF! %o, ",Evaluate(r`jEM,[x,y]);
				end if;
				fprintf Dir, "EntInKerOfIsog := %o",r`EntInKerOfIsog;
            fprintf Dir, ">";
            if i ne #Array[k] then
                fprintf Dir, ",\n";
            end if;
        end for;
        fprintf Dir, "];\n";
    end for;
    return "Done!";
end function;


printf "Printing the new array's MaxCleanGenus0WithModels and MaxCleanGenus1rpWithModels to\n\n~/EntanglementGroups/LoadableFiles/MaxCleanWithModels.m\n\nLoading this file will reload these arrays without needing to repeat the computation.";

PrintEntanglementArray(MaxCleanGenus0WithModels,"~/EntanglementGroups/LoadableFiles/MaxCleanWithModels.m", "MaxCleanGenus0WithModels");
PrintEntanglementArray(MaxCleanGenus1rpWithModels,"~/EntanglementGroups/LoadableFiles/MaxCleanWithModels.m", "MaxCleanGenus1rpWithModels");

















































