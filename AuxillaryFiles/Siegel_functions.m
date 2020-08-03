
load "~/EntanglementGroups/AuxillaryFiles/jInv.m";

function CuspData(G)
    N:=#BaseRing(G);  SL2:=SL(2,Integers(N)); H :=G meet SL2;
    if SL2![-1,0,0,-1] notin H then
        H:=sub<SL2| Generators(H) join {SL2![-1,0,0,-1]}>;
    end if;
    Ht:=sub<SL2|[Transpose(g):g in Generators(H)]>;
    cusps:=[ Sort([[Integers()!a[1],Integers()!a[2]]: a in O]) : O in Orbits(Ht)];
    cusps:=Sort([O: O in cusps | GCD([O[1][1],O[1][2],N]) eq 1]);
    matrices:=[ SL(2,Integers())![1,0,0,1] ];
    for c in cusps do
        if [1,0] notin c then
            c_:=c[1];
            a:=Integers()!c_[1]; b:=Integers()!c_[2];
            while GCD(a,b) ne 1 do
                if b ne 0 then
                    a:=a+N;
                else
                    b:=b+N;
                end if;
            end while;
            g,x,y:=XGCD(a,b);
            matrices:=matrices cat [SL(2,Integers())![a,-y,b,x]];
        end if;
    end for;
    SL2:=SL(2,Integers(N));
    widths:=[ Minimum([i:i in [1..N]| (SL2!A)*(SL2![1,i,0,1])*(SL2!A)^(-1) in H]) :  A in matrices];
    return matrices, widths;
end function;



function SingleTerm(vec,N,m,prec)
	a1 := vec[1];
	a2 := vec[2];
	K<zeta>:=CyclotomicField(N);
	R<q>:=PuiseuxSeriesRing(CyclotomicField(N),N*prec);
	expqz := Numerator(a2)*(N div GCD(N,Denominator(a2)));
	qz := q^a1*zeta^expqz;
	return (1-(q^m*qz))*(1-q^m/qz) +O(q^prec);
end function;

function SiegelFunctionList(vec,N,prec)
	a1 := vec[1];
	a2 := vec[2];
	K<zeta>:=CyclotomicField(N);
	B := Polynomial([1/6,-1,1]);
	Ord := Evaluate(B,a1)/2;
	R<q>:=PuiseuxSeriesRing(CyclotomicField(N),Denominator(Ord)*Ceiling(prec+Ord): Global := true);
	expqz := Numerator(a2)*(N div GCD(N,Denominator(a2)));
	qz := q^a1*zeta^expqz ;
	LT := q^(Evaluate(B,a1)/2)*(1-qz);
	list1 := [LT];
	m:=1;
	while R!SingleTerm(vec,N,m,prec)-R!1 ne O(q^prec)  do
		Append(~list1,SingleTerm(vec,N,m,prec));
		m := m+1;
	end while;
	return list1;
end function;

function CosetReps(G,H)
	assert IsNormal(G,H);
	Q,pi := G/H;
	size := #Q;
	reps :=[];
	cosets :=[];
	while #reps lt size do
		for g in G do
			if not pi(g) in cosets then
				Append(~reps,g);
				Append(~cosets,pi(g));
			end if;
		end for;
	end while;
	return reps;
end function;


//	Input: A pair a in Q^2-Z^2 and a constant c.
//   Output: A constant C and a "reduced" pair b in Q^2-Z^2 such that c*k_a(z) = C*k_b(z),
//   where k_a(z) is a Klein form.
//	This function is taken from SZ16.
function ReduceKlein(a)
    b1:=Floor(a[1]); b2:=Floor(a[2]);
    a1:=a[1] - b1; a2:=a[2] - b2;
    m:=(b2*a1-b1*a2)/2;
    if ((0 lt a1) and (a1 lt 1/2) and (0 le a2) and (a2 lt 1)) or
       ((a1 eq 0) and (0 lt a2) and (a2 le 1/2)) or
       ((a1 eq 1/2) and (0 le a2) and (a2 le 1/2)) then
       return [a1,a2];
    end if;
    return $$([-a1,-a2]);
end function;

function VecOrbit(vec,G)
	N := #BaseRing(G);
    H := G meet SL(2,Integers(N));
    SLz := SL(2,Integers());
    SLN, piN := ChangeRing(SLz,Integers(N));
    CR := CosetReps(sub<SLN |H,-Identity(H)>,sub<SL(2,Integers(N)) |-Identity(H)>);
    if Type(vec) eq SeqEnum then
    	vec := Vector(Rationals(),2,vec);
    end if;
    if Type(vec) eq ModTupFldElt then
		Or := [vec*GL(2,Rationals())!Inverse(piN)(A) : A in CR];
    end if;
    CleanOr := [v : v in { ReduceKlein(v) : v in Or}];
    return CleanOr;
end function;


function VecPowerOrbit(vec,n,G)
	Or := VecOrbit(vec,G);
    return [ <v,n> : v in Or];
end function;



function QuadN(Or,N)
	T1 := &+[v[2]*(v[1][1]*N)^2 : v in Or ];
    T2 := &+[v[2]*(v[1][2]*N)^2 : v in Or ];
    T3 := &+[v[2]*(v[1][1]*v[1][2]*N^2) : v in Or ];
    if Integers(2)!N eq 0 then
		return Integers(2*N)!T1 eq 0 and Integers(2*N)!T2 eq 0 and Integers(N)!T3 eq 0;
    else
    	return Integers(N)!T1 eq 0 and Integers(N)!T2 eq 0 and Integers(N)!T3 eq 0;
    end if;
end function;



function IsGoodOrbit(Or,N)
	g := GCD(N,12);
	s := &+ [v[2] : v in Or];
	//Case 1
	if g eq 1 then
		return QuadN(Or,N) and Integers(12)!s eq 0;
	end if;

	//Case 2
	if g eq 3 then
		return QuadN(Or,N) and Integers(4)!s eq 0;
	end if;

	//Case 3
	if g eq 4 then
		return QuadN(Or,N) and Integers(3)!s eq 0;
	end if;

	//Case 4 + 5
	if g eq 2 then
		//Case 4
		BOO1 := QuadN(Or,N) and Integers(6)!s eq 0;
		//Case 5
		boo1 := (GCD(s,6) eq 1);
		T1 := Integers()!(&+[v[2]*(v[1][1]*N)^2 : v in Or ]);
		T2 := Integers()!(&+[v[2]*(v[1][2]*N)^2 : v in Or ]);
		T3 := Integers()!(2*&+[v[2]*(v[1][1]*v[1][2]*N^2) : v in Or ]);
		boo2 := false; boo3 := false; boo4 := false;
		if (  Integers(N)!T1 eq 0  ) then boo2 := (  Integers(2)!(T1 div N) eq 1  ); end if;
		if (  Integers(N)!T2 eq 0  ) then boo3 :=  (  Integers(2)!(T2 div N) eq 1  ); end if;
		if (  Integers(N)!T3 eq 0  ) then boo4 := (  Integers(2)!(T3 div N) eq 1  ); end if;
		BOO2 := boo1 and boo2 and boo3 and boo4;
		return BOO1 or BOO2;
	end if;
		//Case 6
	if g eq 12 then
		return QuadN(Or,N);
	end if;
		//Case 7 + 8
	if g eq 6 then
		BOO1 := QuadN(Or,N) and Integers(2)!s eq 0;
		//Case 8

		boo1 := (GCD(s,2) eq 1);
		T1 := Integers()!(&+[v[2]*(v[1][1]*N)^2 : v in Or ]);
		T2 := Integers()!(&+[v[2]*(v[1][2]*N)^2 : v in Or ]);
		T3 := Integers()!(2*&+[v[2]*(v[1][1]*v[1][2]*N^2) : v in Or ]);
        boo2 := false; boo3 := false; boo4 := false;
		if (  Integers(N)!T1 eq 0  ) then boo2 := (  Integers(2)!(T1 div N) eq 1  ); end if;
		if (  Integers(N)!T2 eq 0  ) then boo3 :=  (  Integers(2)!(T2 div N) eq 1  ); end if;
		if (  Integers(N)!T3 eq 0  ) then boo4 := (  Integers(2)!(T3 div N) eq 1  ); end if;
		BOO2 :=boo1 and boo2 and boo3 and boo4;
		return BOO1 or BOO2;
	end if;
end function;


function OrbitReps(G)
	N := #BaseRing(G);
	Reps := [];
	FullOrbits :=[];
	for a,b in [0..N-1] do
    	if [a,b] ne [0,0] then
			Or := VecOrbit([b/N,a/N],G);
			if #Reps eq 0 or { ( #[o : o in Or | o in O] eq 0 ) : O in FullOrbits} eq {true} then
				Append(~Reps,[b/N,a/N]);
				Append(~FullOrbits,Or);
			end if;
        end if;
    end for;
	return Reps, FullOrbits;
end function;


function SiegelPowerOrbitList(vec,G,n, prec)
	N := #BaseRing(G);
    Or := VecOrbit(vec,G);
	//prec2 := Maximum([n*#Or*prec,#Or*prec,n*prec,prec]);
	//list :=[];
	list := &cat [SiegelFunctionList(vec2,N,prec) : vec2 in Or];
	/*for vec2 in Or do
		for g in SiegelFunctionList(vec2,N,prec) do
			Append(~list,g^n);
		end for;
	end for;*/
	return [g^n : g in list];
end function;


function PowerOrbitDivisorAtCusps(Or,G)
	N := #BaseRing(G);
	cusps, widths := CuspData(G);
	B := Polynomial([1/6,-1,1]);
	Sums := [ &+ [Evaluate(B,FractionalPart( (Vector(v[1])*GL(2,Rationals())!A)[1] )) : v in Or] : A in cusps ];
	return Or[1][2]*Vector([widths[j]*Sums[j]/2 : j in [1..#Sums] ]);
end function;

function IsIntegralVec(v)
	return {v[i] in Integers() : i in [1..Degree(v)]} eq {true};
end function;


function GoodPowerOrbitsAndDivisors(G,n)
	N := #BaseRing(G);
    PowerOrbits := [];
	Divisors := [];
    for vec in OrbitReps(G) do
		Orb := VecPowerOrbit(vec,n,G);
		if IsGoodOrbit(Orb,N) then
			D := PowerOrbitDivisorAtCusps(Orb,G);
			if D ne Vector([0 : i in [1..Degree(D)]]) and IsIntegralVec(D) then
				Append(~PowerOrbits,<vec,n>);
				Append(~Divisors, D );
			end if;
		end if;
    end for;
    return PowerOrbits, Divisors;
end function;

function IsoPoVec(k,n)
	assert k le n;
	v := Vector([0 : i in [1..n]]);
    v[1] := -1;
    v[k] := 1;
    return v;
end function;

function VecToSeq(vec)
	return [vec[i] : i in [1..NumberOfColumns(vec)]];
end function;


function FuncToVec(h,N,first,last)
	return Vector([Coefficient(h,i/N) : i in [first*N..last*N]]);
end function;


function VecsToRatFunc(vec1,vec2)
	F<t> := FunctionField(BaseRing(Parent(vec1)));
	N  := &+[t^(i-1)*vec1[i]: i in [1..#VecToSeq(vec1)]];
    D  := &+[t^(i-1)*vec2[i]: i in [1..#VecToSeq(vec2)]];
    return N/D;
end function;




///////////////////////////////////////////////////////////////
//
//	Additional function for the genus 1 cases.
//
///////////////////////////////////////////////////////////////

function GoodPowerOrbits(G)
	N := #BaseRing(G);
    Good := [];
    ind := [];
    for vec in OrbitReps(G) do
		for n in [1..12] do
			if IsGoodOrbit(VecPowerOrbit(vec,n,G),N) and vec notin ind then
                Append(~Good,<vec,n>);
                Append(~ind, vec);
            end if;
        end for;
    end for;
    return Good;
end function;


function GoodPowerOrbitsAndDivisors(G)
	N :=#BaseRing(G);
    ORBITS := GoodPowerOrbits(G);
	DIVISORS := [PowerOrbitDivisorAtCusps(VecPowerOrbit(v[1],v[2],G),G) : v in ORBITS ];
    return ORBITS, DIVISORS;
end function;

function OrbitRatio(vec1,vec2,G)
	O1 := VecPowerOrbit(vec1,1,G);
	O2 := VecPowerOrbit(vec2,-1,G);
	return O1 cat O2;
end function;

function GoodRatioOrbits(G)
	Good := [];
	N := #BaseRing(G);
	OrReps := OrbitReps(G);
	for a,b in OrReps do
		if a ne b then
			Or := OrbitRatio(a, b,G);
			if IsGoodOrbit(Or,N) then
				Append(~Good,[a,b]);
			end if;
		end if;
	end for;
	return Good;
end function;

function GoodRatioOrbitDivisors(G)
	Orbs := GoodRatioOrbits(G);
    Divs := [];
    Vecs := [];
    for pair in Orbs do
		Or := OrbitRatio(pair[1],pair[2],G);
		d := PowerOrbitDivisorAtCusps(Or,G);
        if not Vector(d) in Divs then
			Append(~Divs, Vector(d));
            Append(~Vecs, pair);
        end if;
    end for;
    return Divs,Vecs;
end function;




function xVECTORS(n)
	assert n ge 2;
    VECTORS:=[];
    V := CartesianPower([0,1,2],n-1);
    for v in V do
	if &+ [v[i] : i in [1.. #v]] eq 2 then
        newv := [-2] cat [v[i] : i in [1.. #v]];
		Append(~VECTORS,Vector(newv));
    end if;
    end for;
    return VECTORS;
end function;

function yVECTORS(n)
	assert n ge 2;
    VECTORS:=[];
    V := CartesianPower([0,1,2,3],n-1);
    for v in V do
	if &+ [v[i] : i in [1.. #v]] eq 3 then
        newv := [-3] cat [v[i] : i in [1.. #v]];
		Append(~VECTORS,Vector(newv));
    end if;
    end for;
    return VECTORS;
end function;

function CleanAB(A,B)
	inds := [];
	for i in [1..#A] do
		if {A[i][j] in Integers() : j in [1..#(VecToSeq(A[i]))]} ne {true} then
        	Append(~inds,i);

        end if;
    end for;
    return [A[i] :i in [1..#A] | not i in inds]  ,[B[i] :i in [1..#B] | not i in inds];
end function;

function EllitpicCurveFromFuncs(x,y,N);
	K<zeta> := Parent(Coefficients(x)[1]);
    P<X,Y> := AffineSpace(K,2);
    FuncsL := [y^2,x*y,y];
    PolL := [Y^2,X*Y,Y];
    FuncsR := [x^n : n in [3,2,1,0]];
    PolR := [X^n : n in [3,2,1,0]];
    a,b,c := Coefficients(y);
    MinPow := Floor(3*b/c);
    MaxPow :=1;
    CoefsL:= [FuncToVec(f,N,MinPow,MaxPow) : f in FuncsL];
    CoefsR:= [FuncToVec(f,N,MinPow,MaxPow) : f in FuncsR];
    ML := Matrix(K,[VecToSeq(v) : v in CoefsL]);
   	MR := Matrix(K,[VecToSeq(v) : v in CoefsR]);
	V := VectorSpace(K,#VecToSeq(CoefsL[1]));
    WL := sub<V|CoefsL>;
    WR := sub<V|CoefsR>;
	v := (WL meet WR).1;
    _, mL := IsConsistent(ML,v);
    _, mR := IsConsistent(MR,v);
    CoL := VecToSeq(mL);
    CoR := VecToSeq(mR);
    C := ProjectiveClosure(Curve(P,(&+[CoL[i] * PolL[i] : i in [1,2,3]]) -(&+[CoR[i] * PolR[i] : i in [1,2,3,4]])));
    E, map :=  EllipticCurve(C,C![0,1,0]);
    jInv := jInvariant(E);
//	if not jInvariant(E) in Rationals() then
		return E,jInvariant(E);
//	else
//
//    end if;
end function;

function jMapFromFuncs(x,y,N,max)
	R<q> := Parent(x);
    K<zeta> := BaseRing(R);
    L<t> := LaurentSeriesRing(Rationals());
    JJ := 1/t*L!jInvCoeff;
    j := R!JJ;
	f :=R!1;
	P<X,Y> := FunctionField(K,2);
    Pow :=[];
    Pol := [];
    PowY :=[];
    PolY :=[];
    PowJ :=[];
    PolJ := [];
    dim := 0;
    n :=0;
	while dim eq 0 do
		Append(~Pow,f);
        Append(~PowJ,f*j);
		Append(~PowY,f*y);
        Append(~Pol,X^n);
		Append(~PolY,Y*X^n);
		Append(~PolJ,X^n);
        n := n+1;
        f := f*x;
		K := Parent(Coefficients(x)[1]);
        MinPow := Minimum([Valuation(y)*max,Valuation(y)*(-max)]);
	    MaxPow := Ceiling((MinPow+2*max+1)/N)+10;
		Coefs:= [FuncToVec(f,N,MinPow,MaxPow) : f in Pow];
    	CoefsJ:= [FuncToVec(f,N,MinPow,MaxPow) : f in PowJ];
		CoefsY:= [FuncToVec(f,N,MinPow,MaxPow) : f in PowY];
        M := Matrix(K,[VecToSeq(v) : v in Coefs cat CoefsY]);
    	MJ := Matrix(K,[VecToSeq(v) : v in CoefsJ]);
		V := VectorSpace(K,#VecToSeq(Coefs[1]));
		W := sub<V|Coefs cat CoefsY>;
    	WJ := sub<V|CoefsJ>;
		I := W meet WJ;
        dim := Dimension(I);
    end while;
    Ivec := I.1;
    _,vec1 := IsConsistent(M,Ivec);
    _,vec2 := IsConsistent(MJ,Ivec);
	Num := &+ [(Pol cat PolY)[i] * vec1[i] : i in [1..#(Pol cat PolY)]];
    Den := &+[(PolJ)[i] * vec2[i] : i in [1..#(PolJ)]];
    return Num/Den;
end function;




/*
function xVECTORS(n)
	assert n ge 2;
    VECTORS:=[];
    V := CartesianPower([0,1,2],n-1);
    for v in V do
	if &+ [v[i] : i in [1.. #v]] eq 2 then
        newv := [-2] cat [v[i] : i in [1.. #v]];
		Append(~VECTORS,Vector(newv));
    end if;
    end for;
    return VECTORS;
end function;

function yVECTORS(n)
	assert n ge 2;
    VECTORS:=[];
    V := CartesianPower([0,1,2,3],n-1);
    for v in V do
	if &+ [v[i] : i in [1.. #v]] eq 3 then
        newv := [-3] cat [v[i] : i in [1.. #v]];
		Append(~VECTORS,Vector(newv));
    end if;
    end for;
    return VECTORS;
end function;





function EllitpicCurveFromFuncs(x,y,N);
	K<zeta> := Parent(Coefficients(x)[1]);
    P<X,Y> := AffineSpace(K,2);
    FuncsL := [y^2,x*y,y];
    PolL := [Y^2,X*Y,Y];
    FuncsR := [x^n : n in [3,2,1,0]];
    PolR := [X^n : n in [3,2,1,0]];
    a,b,c := Coefficients(y);
    MinPow := Floor(3*b/c);
    MaxPow :=1;
    CoefsL:= [FuncToVec(f,N,MinPow,MaxPow) : f in FuncsL];
    CoefsR:= [FuncToVec(f,N,MinPow,MaxPow) : f in FuncsR];
    ML := Matrix(K,[VecToSeq(v) : v in CoefsL]);
   	MR := Matrix(K,[VecToSeq(v) : v in CoefsR]);
	V := VectorSpace(K,#VecToSeq(CoefsL[1]));
    WL := sub<V|CoefsL>;
    WR := sub<V|CoefsR>;
	v := (WL meet WR).1;
    _, mL := IsConsistent(ML,v);
    _, mR := IsConsistent(MR,v);
    CoL := VecToSeq(mL);
    CoR := VecToSeq(mR);
    C := ProjectiveClosure(Curve(P,(&+[CoL[i] * PolL[i] : i in [1,2,3]]) -(&+[CoR[i] * PolR[i] : i in [1,2,3,4]])));
	if Genus(C) ne 1 then
		print "ERROR: Genus of curve from x and y is not 1.";
		return false;
	else
		E, map :=  EllipticCurve(C,C![0,1,0]);
		jInv := jInvariant(E);
		printf "\nThe j invarient of E is %o.\n\n",jInvariant(E);
		return E;
	end if;
end function;

function jMapFromFuncs(x,y,N,max)
	R<q> := Parent(x);
    K<zeta> := BaseRing(R);
    L<t> := LaurentSeriesRing(Rationals());
    JJ := 1/t*L!jInvCoeff;
    j := R!JJ;
	f :=R!1;
	P<X,Y> := FunctionField(K,2);
    Pow :=[];
    Pol := [];
    PowY :=[];
    PolY :=[];
    PowJ :=[];
    PolJ := [];
    dim := 0;
    n :=0;
	time while dim eq 0 do
		Append(~Pow,f);
        Append(~PowJ,f*j);
		Append(~PowY,f*y);
        Append(~Pol,X^n);
		Append(~PolY,Y*X^n);
		Append(~PolJ,X^n);
        n := n+1;
        f := f*x;
		K := Parent(Coefficients(x)[1]);
        MinPow := Minimum([Valuation(y)*max,Valuation(y)*(-max)]);
	    MaxPow := Ceiling((MinPow+2*max+1)/N);
		Coefs:= [FuncToVec(f,N,MinPow,MaxPow) : f in Pow];
    	CoefsJ:= [FuncToVec(f,N,MinPow,MaxPow) : f in PowJ];
		CoefsY:= [FuncToVec(f,N,MinPow,MaxPow) : f in PowY];
        M := Matrix(K,[VecToSeq(v) : v in Coefs cat CoefsY]);
    	MJ := Matrix(K,[VecToSeq(v) : v in CoefsJ]);
		V := VectorSpace(K,#VecToSeq(Coefs[1]));
		W := sub<V|Coefs cat CoefsY>;
    	WJ := sub<V|CoefsJ>;
		I := W meet WJ;
        dim := Dimension(I);
    end while;
    Ivec := I.1;
    _,vec1 := IsConsistent(M,Ivec);
    _,vec2 := IsConsistent(MJ,Ivec);
	Num := &+ [(Pol cat PolY)[i] * vec1[i] : i in [1..#(Pol cat PolY)]];
    Den := &+[(PolJ)[i] * vec2[i] : i in [1..#(PolJ)]];
    return Num/Den;
end function;


*/


