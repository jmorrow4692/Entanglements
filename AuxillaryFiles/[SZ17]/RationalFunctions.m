// Magma code and data related to "Modular curves of prime power level with infinitely many rational points",
// by Andrew V. Sutherland and David Zywina.

function FindRelation(h,j,n)

/* Let h and j be Puiseux series with coefficients in a field K such that
   K(h) is a degree n extension of K(j).   We thus have j=J(h) for a unique 
   rational function J(t) in K(t); it has degree n.
   The function outputs J(t).

   Warning: An error will occur if there are not enough terms of h and j to determine J.
*/
        K:=Compositum(BaseRing(Parent(h)),BaseRing(Parent(j)));
    P<[a]>:=PolynomialRing(K,2*(n+1));
    R<q>:=PuiseuxSeriesRing(P);
        h:=R!h; j:=R!j;
    s:= j*&+[a[i+1]*h^i : i in [0..n]] - &+[a[i+n+2]*h^i : i in [0..n]];
    A:=[];  
    repeat
        v:=Valuation(s); 
            c:=P!Coefficient(s,v);   
            s:=s-c*q^v;
        A:= A cat [ [K!MonomialCoefficient(c,a[i]) : i in [1..2*n+2]] ];    
        B:=Matrix(K,A);
        until Rank(B) eq 2*n+1;
        v:=Basis(NullSpace(Transpose(B)))[1];
        _<t>:=FunctionField(K);
        return (&+[v[i+n+2]*t^i : i in [0..n]])/(&+[v[i+1]*t^i : i in [0..n]]);       
end function;


function EvaluateRationalFunction(f,a)
/* Input: f a rational function in some K(t), a is an element of K or a pair giving a point in P^1(K).
   The function returns f(a) as a pair representing a point in P^1(K); it is [1,0] or of the form [x,1].
*/
    if Type(a) ne SeqEnum then a:=[a,1]; end if;

    num:=Numerator(f);  den:=Denominator(f);  d1:=Degree(num); d2:=Degree(den);
    if a[2] eq 0 and d1 gt d2 then return [1,0]; end if;
    if a[2] eq 0 and d1 lt d2 then return [0,1]; end if;
    if a[2] eq 0 and d1 eq d2 then return [Coefficient(num,d1)/Coefficient(den,d2),1]; end if;  
    
    a:=a[1]/a[2];
    if Evaluate(den,a) eq 0 then return [1,0]; end if;
    return [Evaluate(num,a)/Evaluate(den,a), 1];
end function;


function RationalInverse(f)    
/*  For a rational function f in K(t) of degree 1 computes g in K(t) so that g(f(t))=t=f(g(t)).
*/
    K:=BaseRing(Parent(f));
    F<t>:=FunctionField(K); f:=F!f;
    b:= Evaluate(Numerator(f),0);    a:= Evaluate(Numerator(f)-b,1);
    d:= Evaluate(Denominator(f),0);  c:= Evaluate(Denominator(f)-d,1);
    return (d*t-b)/(-c*t+a);
end function;


function RationalMap0(a,b,c,K)
/*  Given three distinct elements a,b,c in P^1(K) gives the unique degree 1 rational function
    in K(t) such that the induced map P^1 -> P^1 takes a to 0, b to 1 and c to infinity. 
    We can take a,b,c to be a non-zero pair in K^2 or a number d in K meaning [d,1].  The 
    point at infinity is [1,0].
*/
    if Type(a) ne SeqEnum then a:=[a,1]; end if;
    if Type(b) ne SeqEnum then b:=[b,1]; end if;
    if Type(c) ne SeqEnum then c:=[c,1]; end if;

    F<t>:=FunctionField(K);
    if c[2] eq 0  then a:=a[1]/a[2]; b:=b[1]/b[2];  return (t-a)/(b-a); end if;
    if b[2] eq 0  then a:=a[1]/a[2]; c:=c[1]/c[2];  return (t-a)/(t-c); end if;
    if a[2] eq 0  then b:=b[1]/b[2]; c:=c[1]/c[2];  return (b-c)/(t-c); end if;
    a:=a[1]/a[2]; b:=b[1]/b[2]; c:=c[1]/c[2];       return (t-a)/(t-c)*(b-c)/(b-a);    
end function;


function RationalMap(a,b,c,aa,bb,cc,K)
/* Input: Distinct a,b,c in P^1(K) and distinct aa,bb,cc in P^1(K) with K a field.          
    Output: The unique rational function in K(t) that induces an isomorphism 
          P^1 -> P^1 which takes a,b,c to aa,bb,cc, respectively.
*/
    F<t>:=FunctionField(K);
    f1:=RationalMap0(a,b,c,K);
    f2:=RationalMap0(aa,bb,cc,K);
    return Evaluate(RationalInverse(f2),f1);
end function;


function FindParametrization(J,a,K)
/*
    Input:  a rational function J(t) in K(t) and a triple a=(a1,a2,a3) of distinct
            elements in Q such that there is some invertible f in K(t) such that
            J(f(t)) belongs to Q(t) and a_1,a_2,a_3 belong in J(f(Q)).  
            [We assume that J(infty) is not a_1,a_2 or a_3]
    Output: J(f(t)) for some f as above.
*/
    F<t>:=FunctionField(K);
    J:=F!J; a:=[K!b: b in a];
    R:=[ [r[1]: r in Roots(Numerator(J-a[i]))] : i in [1..3]];
    Js:={};
    for a in R[1], b in R[2], c in R[3] do
        f:=RationalMap(0,1,[1,0], a,b,c, K);
        JJ:=Evaluate(J,f);
        if JJ in FunctionField(Rationals()) then
            return JJ;
        end if;        
    end for;
    return 0;
end function;


function ValuationRationalFunction(f,P)
/*
    Give a non-zero rational function f  in K(t) returns the valuation at the point P.
*/
    K:=BaseRing(Parent(f));
    if Type(P) ne SeqEnum then 
       return ValuationRationalFunction(f,[P,1]);
    end if;

    if P[2] eq 0 then
       return Degree(Denominator(f))-Degree(Numerator(f));
    end if;

    a:=K!(P[1]/P[2]);
    Pol<t>:=PolynomialRing(K);
    n:=Pol!Numerator(f); d:=Pol!Denominator(f);

    return Valuation(n,t-a)-Valuation(d,t-a);
end function;



function SameRationalParametrization(J1,J2,K : findall:=false, triple:=[]);
/*
    Input:  J1, J2 non-constant elements of K(t)
    Output: Returns true if J1(t) = J2(f(t)) for some f in K(t) of degree 1; otherwise false.
            If true, the also outputs f (returns the set of all possible f if "findall" is true).
    Note: f is searched for by solving J1(a)=J2(f(t)) for three different a in P^1(K); the three
          values used can be set by changing "triple".
*/
    F<t>:=FunctionField(K);
    J1:=F!J1; J2:=F!J2;

    if #triple ge 3 then
       triple:=[triple[i]: i in [1..3]];
    else
       triple:=[[1,0],[0,1],[1,1]];
    end if;

    RR:=[];
    for i in [1..3] do
        P:=triple[i];  if Type(P) ne SeqEnum then P:=[P,1]; end if;
        v:=ValuationRationalFunction(J1,P);

        Q:=EvaluateRationalFunction(J1,P);
        if Q[2] ne 0 then
           num:=Numerator(J2-Q[1]/Q[2]); den:=Denominator(J2-Q[1]/Q[2]); 
        else
           num:=Numerator(J2); den:=Denominator(J2); 
        end if;

        R:=[[r[1],1]: r in Roots(num) cat Roots(den)] cat [[1,0]];
        R:=[r: r in R | ValuationRationalFunction(J2,r) eq v];

        if #R eq 0 then return false; end if;

        RR:=RR cat [R];
    end for;

     
    F:={};
    for a in RR[1], b in RR[2], c in RR[3] do
    if #{a,b,c} eq 3 then
        f:=RationalMap(triple[1],triple[2],triple[3], a,b,c, K);
        if Evaluate(J2,f) eq J1 then 
           F:=F join {f};
           if findall eq false then 
              return true, f; 
           end if;
        end if;
    end if;
    end for;   

    if #F eq 0 then return false; end if;
    return true, F;
end function;


function SL2ZLift(L,N)
/*
    Input:  a matrix L in SL(2,Z/NZ).
    Output: a matrix in SL(2,Z) that is congruent to L mod N.
*/
    Z:= Integers();
    GL2 := GeneralLinearGroup(2,Z); 
    SL2_N := SpecialLinearGroup(2,Integers(N));

    L := SL2_N!L;   //Coerce just in case
    a := Z!L[1,1]; b := Z!L[1,2]; c := Z!L[2,1]; d := Z!L[2,2];
    g, x, y := Xgcd(a,b);   
    if g eq 1 then
        D := x*(1-(a*d-b*c)) div N;
        C :=-y*(1-(a*d-b*c)) div N; 
        A:=[a,b,c+N*C,d+N*D];
    elif (b mod N) eq 0 and (c mod N) eq 0 then
        A := Solution(d, (1-a*d) div N, N);
        B := (A*d - ((1-a*d) div N)) div N;
        A:=[a+N*A, N*B, N, d];
    else
            h := Solution(g,1,N); 
            L1:= $$([g,0,0,h],N);  L2:= $$([a div g, b div g, g*c, g*d],N);
            A := (GL2!L1)*(GL2!L2);
            A:=[A[1,1],A[1,2],A[2,1],A[2,2]];
        end if;
     
        //Check!
        assert A[1] mod N eq L[1,1] and A[2] mod N eq L[1,2] and A[3] mod N eq L[2,1] and A[4] mod N eq L[2,2];
        assert A[1]*A[4]-A[2]*A[3] eq 1;

        return A;
end function;

// Implementation of Cauchy interpolation method for rational function reconstruction
// based on Section 5.8 of "Modern Computer Algebra" by von zur Gathen and Gerhard

// Returns 0 if no solution exists
function InterpolateRationalFunction(P,V,k)
    assert k gt 0 and k lt #P;
    F:=Parent(Random(P));
    if Type(F) eq RngInt then F:=Rationals(); end if;
    R<x>:=PolynomialRing(F);
    P:=[F!p:p in P];  V:=[F!v:v in V];
    assert #P eq #Set(P);
    assert #P eq #V;
    g:=R!Interpolation(P,V);
    m:=&*[(x-p):p in P];
    r0:=m; s0:=1; t0:=0;
    r1:=g; s1:=0; t1:=1;
    while r1 ne 0 do
        if Degree(r0) lt k then break; end if;
        q:= (r0 - (r0 mod r1)) div r1;
        r:=r0-q*r1; s:=s0-q*s1; t:=t0-q*t1;
        r0:=r1; s0:=s1; t0:=t1;
        r1:=r; s1:=s; t1:=t;
    end while;
    r0:=R!r0;  t0:=R!t0;
    assert Degree(r0) lt k and Degree(t0) le #P-k;
    for i:=1 to #P do if Evaluate(t0,P[i]) ne 0 then assert Evaluate(r0,P[i])/Evaluate(t0,P[i]) eq V[i]; end if; end for;
    if GCD(r0,t0) ne 1 then return 0; end if;
    return r0/t0;
end function;

// Given f, g in Q(t) attempts to compute h in Q(t) such that f(t) = g(h(t))
function InterpolateMiddleMap(f,g)
    nf := Degree(f);  ng := Degree(g);
    assert IsDivisibleBy(nf,ng);
    nh := nf div ng;
    for i:=1 to 500 do
        P:=[];  V:=[];
        while #P le 2*nh+4 do
            p := Random(5*(nf+10));
            if p in P then continue; end if;
            if Evaluate(Denominator(f),p) eq 0 then continue; end if;
            r := Roots(Numerator(g - Evaluate(f,p)));
            if #r eq 0 then printf "f(%o) = %o is not in the iamge of g in InterpolateMiddleMap\n", p, Evaluate(f,p); assert false; end if;
            v:=r[1][1];
            P:= Append(P,p);  V:=Append(V,v);
        end while;
        h := InterpolateRationalFunction(P,V,nh+2);
        if h eq 0 then continue; end if;
        if Evaluate(g,h) eq f then return h; end if;
    end for;
    print "Unable to find h such that f = g(h) after 500 attempts";
    assert false;
end function;

// given f in Q[x] returns g,c st f = u*g with u in Q and g in Z[x] with content 1
function IntegralPoly(f)
    n:=LCM([Denominator(LeadingCoefficient(g)):g in Terms(f)]);
    if n eq 1 then n:=1/GCD([Denominator(LeadingCoefficient(g)):g in Terms(f)]); end if;
    return n*f,Rationals()!1/n;
end function;

// factors f into integral polys with content 1 times a unit u in Q
// will replace (t+a)(t-a) with (t^2-a^2)
function NiceFactorization(f)
    F,u:=Factorization(f);
    u:=Rationals()!u;
    G:=[];
    for i:=1 to #F do
        g,c:=IntegralPoly(F[i][1]);
        G[i]:=<g,F[i][2]>;
        u := u*c^F[i][2];
    end for;
    if #G eq 2 and G[1][2] eq G[2][2] and #Terms(G[1][1]) eq 2 and #Terms(G[2][1]) eq 2 and Terms(G[1][1])[1] eq -Terms(G[2][1])[1] and Terms(G[1][1])[2] eq Terms(G[2][1])[2] then
        G:= [<Terms(G[1][1])[2]^2 - Terms(G[1][1])[1]^2,G[1][2]>];
    end if;
    return G,Rationals()!u;
end function;

function CoefficientString(c)
    if c eq 1 then return ""; end if;
    if c eq -1 then return "-"; end if;
    return Sprintf("%o*",c);
end function;

function PolyString(f)
    if Degree(f) le 0 then return Sprintf("%o",f); end if;
    A,u:=NiceFactorization(f);
    if u ne 1 then return CoefficientString(u) cat $$(f/u); end if;
    if #A eq 1 then
        if A[1][2] eq 1 then
            if#Terms(A[1][1]) eq 1 then return Sprintf("%o",A[1][1]); else return Sprintf("(%o)",A[1][1]); end if;
        else
            if#Terms(A[1][1]) eq 1 then return Sprintf("%o^%o",A[1][1],A[1][2]); else return Sprintf("(%o)^%o",A[1][1],A[1][2]); end if;
        end if;
    else
        return $$(A[1][1]^A[1][2]) cat "*" cat $$(&*[A[i][1]^A[i][2]:i in [2..#A]]);
    end if;
end function;
    
function RationalFunctionString(f)
    N:=Numerator(f);  D:=Denominator(f);
    if N eq 0 then return "0"; end if;
    N,n:=IntegralPoly(N);  D,d:=IntegralPoly(D);
    c:=n/d;
    R<t>:=PolynomialRing(Rationals());
    N:=Evaluate(N,t);  D:=Evaluate(D,t);
    if Degree(N) le 0 and Degree(D) eq 0 then assert N eq 1 and D eq 1; return Sprintf("%o",c); end if;
    if D eq 1 then return CoefficientString(c) cat PolyString(N); end if;
    if N eq 1 then return Sprintf("%o/(%o%o)", Numerator(c), CoefficientString(Denominator(c)), PolyString(D)); end if;
    return Sprintf("(%o%o) / (%o%o)", CoefficientString(Numerator(c)), PolyString(N), CoefficientString(Denominator(c)), PolyString(D));
end function;
