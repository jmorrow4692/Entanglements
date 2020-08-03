// Magma code and data related to "Modular curves of prime power level with infinitely many rational points",
// by Andrew V. Sutherland and David Zywina.

// This source file contains code to determine the isogeny class of the Jacobian of a modular curve X_G of genus 1
// It relies on code taken from magma scripts associated to the papers
// "Computing images of Galois representations attached to elliptic curves", Andrew V. Sutherland (http://dx.doi.org/10.1017/fms.2015.33)
// "Possible indices for the Galois image of elliptic curves over Q", David Zywina (http://arxiv.org/abs/1508.07663)

// The main function is JacobianOfXG(G), which, given an admissible group of genus 1 specified as a subgroup of GL(2,Z/NZ)
// returns the Cremona label of the isogeny class containing Jac(X_G) (a string), along with its rank (an integer).

load "~/EntanglementGroups/AuxillaryFiles/[SZ17]/GL2Invariants.m";

function PrimitiveDivisionPolynomial(E,N)
/*  Returns a polynomial whose roots are precisely the x-coords of the points of exact order N for the elliptic curve E/Q.
*/
    local f;
    f:=DivisionPolynomial(E,N);
    for d in Divisors(N) do if d gt 1 and d lt N then f := ExactQuotient(f,$$(E,d)); end if; end for;
    return f;
end function;

function TorsionBasis(E,N) 
/*  For an elliptic curve E over F_p given by a Weierstrass equation of the form y^2=x^3+ax+b, returns a basis for E[N].
*/
    local C, K, L, EL, x1, y1, y1s, x2, y2, y2s, Q, P, S, phi, f, b, g;

    C := Coefficients(E);   assert C[1] eq 0 and C[2] eq 0 and C[3] eq 0;
    phi:=PrimitiveDivisionPolynomial(E,N);

        roots := Roots(phi);
    if #roots ne Degree(phi) then
           K:=SplittingField(phi);
           return $$(ChangeRing(E,K),N);
    end if;
    K:=BaseRing(E);
    L:=K;
    R<x>:=PolynomialRing(K);

    // Our first basis point P (of order N) will have x-coord equal to the first root of phi
    x1:=roots[1][1];
    f:=x^3+C[4]*x+C[5];
    y1s:=Evaluate(f,x1);
        b,y1:=IsSquare(y1s); 

    // if y1 is not in L, extend L so that it is.
    if not b then 
            L   := SplittingField(x^2-y1s);  
            b,y1:= IsSquare(L!y1s); 
            x1  := L!x1; 
            f   := ChangeRing(f,L); 
            E   := ChangeRing(E,L); 
        end if;

    // We now make a list S of the x-coords of the points in <P>.  
        // Note that we only need to compute multiples of P up to N/2 since -P and P have the same x-coord.
    S:= [x1];
    P:= E![x1,y1];
    Q:= P+P;
    for i:=2 to Floor(N/2) do
        S :=Append(S,Q[1]);
        Q+:= P;
    end for;
    // Find a root of phi that is not the x-coord of a point in S
    for r in roots do
        if r[1] in S then continue; end if;
        // Construct P2 not in <P>. 
        x2 := r[1];
        y2s:= Evaluate(f,x2);
                b,y2:=IsSquare(y2s);
        assert b; // We can guarantee that P2 is in E(L), since its x-coord is and so is the y-coord of P1:=P
        if not IsPrime(N) then // if N is not prime then we also need to verify that no multiple of Q=[x2,y2] lies in <P>
                   EL:=ChangeRing(E,L);
                   Q :=EL![x2,y2];
                   R :=EL!0;
                   fail := false;
                   for i:= 1 to Floor(N/2) do
                       R+:=Q;
                       if R[1] in Parent(x1) and Parent(x1)!R[1] in S then fail := true; end if;
                   end for;
                   if fail then continue; end if;
        end if;
        break;
    end for;
    EL:=ChangeRing(E,L);
    return [EL![x1,y1],EL![x2,y2]];
end function;

function TorsionPoints(B,N)
// Given a basis B for E[N], returns a list A of the points in E[N] ordered so that A[i*N+j+1] = i*B[1]+j*B[2] for i,j in [0,N-1]
    local A;
    A:=[Parent(B[1])!0:i in [1..N^2]];
    for j:= 1 to N-1 do A[j+1] := A[j]+B[2]; end for;
    for i:= 1 to N-1 do
        A[i*N+1] := A[(i-1)*N+1]+B[1];
        for j:= 1 to N-1 do A[i*N+j+1] := A[i*N+j]+B[2]; end for;
    end for;
    return A;
end function;

function TorsionPointIndex(A,P,N)
/* Given a list A of E[N] ordered so that A[i*N+j+1] = i*B[1]+j*B[2] for some basis B, and a point P, 
   returns i and j such that P=i*B[1]+j*B[2]
*/
    k := Index(A,P);
    assert k ne 0;
    j := (k-1) mod N;
    i := ExactQuotient(k-1-j,N);
    return [i,j];   
end function;



function FrobeniusMatrix(E)
/*  Input is an elliptic curve E defined over F_p.   
    The output is a matrix A in M(2,Z) so that for any integer N>1 relatively prime to p, 
    the action of Frob_p on E[N] corresponds, with respect to some choice of basis, to A modulo N.
*/
    Fp:=BaseRing(E);     
    p:=Characteristic(Fp);
    a:=TraceOfFrobenius(E);
    j:=jInvariant(E);

    Delta :=a^2-4*p;
    Delta0:=FundamentalDiscriminant(Delta);
    _,f:=IsSquare(Delta div Delta0);

    for v in Sort(Divisors(f)) do
       D:=Delta0*v^2;
       if Evaluate(HilbertClassPolynomial(D),j) eq 0 then
          b:=f div v;
          return [(a-(Delta div b)) div 2, ((Delta div b)*(1- Delta div b^2)) div 4, b, (a+(Delta div b)) div 2],a,b;
       end if;
    end for;
end function;

function FrobAction(p,P);  
/*  Given an elliptic curve E over F_p and a point P of E (defined over some finite extension of F_p) returns Frob_p(P).
*/
    return Parent(P)![P[1]^p,P[2]^p,P[3]^p];
end function;

FrobeniusMatrixWithAutomorphismGroup := function(E,N)
/*  Input is an elliptic curve E over F_p, with p>3, and an integer N relatively prime to p.   
    Let Aut(E) be the group of automorphism of the elliptic curve E over an algebraic closure of F_p; 
    it is cyclic by our assumption on p.  

    Output is a pair of matrices Phi and A in GL(2,Z/NZ) so that, with respect to some basis of E[N], 
    Frob_p acts as Phi and there is a generator of Aut(E) that acts as A.
*/
    GL2:=GL(2,Integers(N));
    p:=Characteristic(BaseRing(E));

    j:= jInvariant(E);
    if j ne 0 and j ne 1728 then
       Phi:=GL2!FrobeniusMatrix(E);  A:=GL2![-1,0,0,-1];
       return Phi,A;
    end if;

    /* We now are left with the case where E has j-invariant 0 or 1728. 
       Using the Chinese remainder theorem, we can reduce the computation to the case where N is a prime power.
    */
    if IsPrimePower(N) eq false then
        LL:=[ell^Valuation(N,ell): ell in PrimeDivisors(N)];
        PHI:=[]; AA:=[];
        for d in LL do
            Phi,A:= $$(E,d);   // Recursion
            PHI:=PHI cat [MatrixRing(Integers(),2)!Phi]; AA:=AA cat [MatrixRing(Integers(),2)!A];
        end for;
        
        Phi:=GL2![[ CRT([Phi[i,j]: Phi in PHI],LL) : i in [1,2]]: j in [1..2]];
        A  :=GL2![[ CRT([  A[i,j]:   A in AA ],LL) : i in [1,2]]: j in [1..2]];
        return Phi,A;
    end if;

    // The curve E will be isomorphic to one of the form y^2=x^3+a or y^2=x^3+ax.
    a:=0;
    repeat
        a :=a+1;
        if j eq 0 then
           E2:=EllipticCurve([0,0,0,0,GF(p)!a]);
        else
           E2:=EllipticCurve([0,0,0,GF(p)!a,0]);
        end if;
    until IsIsomorphic(E,E2);
    E:=E2;
 
    // We now compute a basis for E[N] as a Z/NZ-module.
    B  :=TorsionBasis(E,N);
    EN :=TorsionPoints(B,N);
    
    Phi:=Transpose(GL2![TorsionPointIndex(EN,FrobAction(p,B[1]),N),TorsionPointIndex(EN,FrobAction(p,B[2]),N)]);

    K:=Parent(B[1][1]);  // All the N-torsion of E will be defined over this field
    _<x>:=PolynomialRing(K);
    if j eq 0 then    
        zeta:=Roots(x^2+x+1)[1][1];
        C1:=Parent(B[1])![zeta*B[1][1]/B[1][3],B[1][2]/B[1][3],1];
        C2:=Parent(B[2])![zeta*B[2][1]/B[2][3],B[2][2]/B[2][3],1];
    else
        zeta:=Roots(x^2+1)[1][1];
        C1:=Parent(B[1])![-B[1][1]/B[1][3],zeta*B[1][2]/B[1][3],1];
        C2:=Parent(B[2])![-B[2][1]/B[2][3],zeta*B[2][2]/B[2][3],1];
    end if;
    
    A:=Transpose(GL2![TorsionPointIndex(EN,C1,N),TorsionPointIndex(EN,C2,N)]);
    return Phi,A;
end function;

function NumberOfPointsOnXG(G,p)
/* Let G be a subgroup of GL(2,Z/NZ) with det(G)=(Z/N)^* and -I in G.  Let p be a prime not dividing 6N.
   The output is the cardinality of X_G(F_p).
*/
    N:=#BaseRing(G);
    GL2:=GL(2,Integers(N));
    assert -Identity(G) in G and GL2DetIndex(G) eq 1 and IsPrime(p) and GCD(p,6*N) eq 1;

    T,f:=RightTransversal(GL2,G);  
    // T is a set of representatives of the right cosets G\GL2.  
    // The function f:GL2->T maps a matrix A to the representative of the coset G*A.

    tot:=0;  
    for j in GF(p) do
        E:=WeierstrassModel(EllipticCurveWithjInvariant(j));
        Phi,A := FrobeniusMatrixWithAutomorphismGroup(E,N);

        U:=sub<GL2|A>;
        // Now count the elements of G\GL2/<A> fixed by right multiplication by Phi.
        OrbitRep:= {{f(t*u):u in U}: t in T};
        for W in OrbitRep do
            if &and[f(g*Phi) in W : g in W] then
                tot:=tot+1;
            end if;
        end for;

    end for;
    
    // We now count cusps defined over F_p
    U:=sub<GL2|[[1,1,0,1],[-1,0,0,-1]]>;  
    b:=GL2![p,0,0,1];
    OrbitRep:= {{f(t*u):u in U}: t in T};
    for W in OrbitRep do
        if &and[f(g*b) in W : g in W] then
            tot:=tot+1;
        end if;
    end for;

    return tot;
end function;

function JacobianOfXG(G)
/* Let G be a subgroup of GL(2,Z/NZ) with det(G)=(Z/N)^* and -I in G, such that the the curve X_G over Q has genus 1.
   The function outputs an elliptic curve E/Q that is isogenous to the Jacobian of X_G.
   WARNING: Currently the function only works for N divisible by a few small primes (so that the possibly isogeny 
            classes are all in the current Cremona database); an error will occur if this fails.
*/
   assert -Identity(G) in G and GL2DetIndex(G) eq 1 and GL2Genus(G) eq 1;
   N:=#BaseRing(G);
   P:=PrimeDivisors(N);

   // Computes an integer M so that the conductor of any elliptic curve E/Q with good reduction outside P divides M.
   M:=1;
   for p in P do
       if   p eq 2 then M:=2^8*M; 
       elif p eq 3 then M:=3^5*M; 
       else             M:=p^2*M; 
       end if;
   end for;

   D:=EllipticCurveDatabase();
   assert M lt LargestConductor(D);  // Ensures that J is isomorphic to a curve in the current database

   EE:= &cat[ [ EllipticCurve(D,N,i,1)  : i in [1.. NumberOfIsogenyClasses(D,N)] ] : N in Divisors(M)];   
   // The Jacobian of X_G is isogenous to precisely one of the curves in EE.

   p:=5;
   while #EE ne 1 do
         while p in P do  p:=NextPrime(p); end while;
         ap:= (p+1)-NumberOfPointsOnXG(G,p);
         EE:= [E: E in EE | TraceOfFrobenius(E,p) eq ap];
         p:=NextPrime(p);
   end while;

   // return the isogeny class label of our representative curve, along with its rank
   _,c:=Regexp("[0-9]+[a-z]+",CremonaReference(EE[1]));
   return c, Rank(EE[1]);
end function;
