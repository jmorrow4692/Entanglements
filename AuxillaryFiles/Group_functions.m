
//This loads "g0groups.m" as well. Thus gl2tab is an arrary of the genus 0 and genus 1 subgroups of GL2 in SZ and sl2tab are the CP groups. Only of prime power level. The keys are the labels and the objects are records.
load "~/EntanglementGroups/AuxillaryFiles/[SZ17]/g1groups.m";

//This loads the data from Zwyina's paper on the possible mod ell images.
load "~/EntanglementGroups/AuxillaryFiles/[Zyw15]/Data_Zywina.m";
//This loads the data from the RZB database of groups with -I.
load "~/EntanglementGroups/AuxillaryFiles/[RZB15]/gl2data";
//These are the genus 0 and genus 1 groups from the CP database.
load "~/EntanglementGroups/AuxillaryFiles/[CP03]/csg0-lev0.dat";
load "~/EntanglementGroups/AuxillaryFiles/[CP03]/csg0-lev8.dat";
load "~/EntanglementGroups/AuxillaryFiles/[CP03]/csg0-lev16.dat";
load "~/EntanglementGroups/AuxillaryFiles/[CP03]/csg0-lev24.dat";
load "~/EntanglementGroups/AuxillaryFiles/[CP03]/csg0-lev32.dat";
load "~/EntanglementGroups/AuxillaryFiles/[CP03]/csg0-lev48.dat";
load "~/EntanglementGroups/AuxillaryFiles/[CP03]/csg1-lev0.dat";
load "~/EntanglementGroups/AuxillaryFiles/[CP03]/csg1-lev8.dat";
load "~/EntanglementGroups/AuxillaryFiles/[CP03]/csg1-lev16.dat";
load "~/EntanglementGroups/AuxillaryFiles/[CP03]/csg1-lev24.dat";
load "~/EntanglementGroups/AuxillaryFiles/[CP03]/csg1-lev32.dat";
load "~/EntanglementGroups/AuxillaryFiles/[CP03]/csg1-lev40.dat";
load "~/EntanglementGroups/AuxillaryFiles/[CP03]/csg1-lev48.dat";

//Lets sort those groups so they are easier to work with.
CPGenus0 := AssociativeArray();
CPGenus1 := AssociativeArray();
for r in L do
	N := r`level;
	gens := r`matgens;
	//We don't need to consider the group of level 1.
	if N ne 1 then  
	G := sub<SL(2,Integers(N)) | gens>;
	if 	r`genus eq 0 then
		if N in Keys(CPGenus0) then
			Append(~CPGenus0[N],<G,r`name>);
		else
			CPGenus0[N]:=[<G,r`name>];
		end if;
	end if;
	if 	r`genus eq 1 then
		if N in Keys(CPGenus1) then
			Append(~CPGenus1[N],<G,r`name>);
		else
			CPGenus1[N]:=[<G,r`name>];
		end if;
	end if;
	end if;
end for;



function SL2Level(H)
    if H eq SL(2,BaseRing(H)) then return 1; end if;
    return GCD([m:m in Divisors(#BaseRing(H)) | m gt 1 and Index(SL(2,Integers(m)),ChangeRing(H,Integers(m))) eq Index(SL(2,BaseRing(H)),H)]);
end function;





//  A quick function that checks if a group G is genus 0 by checking
//  if <G,-I> meet SL(2,Integers(n)) is conjugate to a genus 0 group
//  in the CP database.
function IsGen0(G)
	N := #(BaseRing(G));
	if not N in Keys(CPGenus0) then return false; end if;
	SL2 := SL(2,Integers(N));
	GL2 := GL(2,Integers(N));
	if not -Identity(GL2) in G then
		G1 := sub<GL(2,Integers(N)) | Generators(G), -Identity(GL2)>;
		H := G1 meet SL2;
	else H := G meet SL2;
	end if;
    LevOfDef := SL2Level(H);
    if LevOfDef eq 1 then return true; end if;
	if not LevOfDef in Keys(CPGenus0) then return false; end if;
    if LevOfDef eq N then
		return true in {IsConjugate(SL2,H,vec[1]) : vec in CPGenus0[N]};
    else
    	SLL := SL(2,Integers(LevOfDef));
    	return true in {IsConjugate(SLL,ChangeRing(H,Integers(LevOfDef)),vec[1]) : vec in CPGenus0[LevOfDef]};
    end if;
end function;

//  A quick function that checks if a group G is genus 1 by checking
//  if <G,-I> meet SL(2,Integers(n)) is conjugate to a genus 1 group
//  in the CP database.
function IsGen1(G)
	N := Modulus(BaseRing(G));
	if not N in Keys(CPGenus1) then return false; end if;
	SL2 := SL(2,Integers(N));
	GL2 := GL(2,Integers(N));
	if not -Identity(GL2) in G then
		H1 := sub<GL(2,Integers(N)) | Generators(G), -Identity(GL2)>;
		H := H1 meet SL2;
	else H := G meet SL2;
	end if;
    LevOfDef := SL2Level(H);
    if LevOfDef eq 1 then return false; end if;
    if not LevOfDef in Keys(CPGenus1) then return false; end if;
    if LevOfDef eq N then
		return true in {IsConjugate(SL2,H,vec[1]) : vec in CPGenus1[N]};
    else
    	SLL := SL(2,Integers(LevOfDef));
    	return true in {IsConjugate(SLL,ChangeRing(H,Integers(LevOfDef)),vec[1]) : vec in CPGenus1[LevOfDef]  };
    end if;
end function;



//////////////////////////////////////////////////////////////////////
//
//  Some functions from the Q(3^infty) paper [D.L.-R.N.S.]
//  
//////////////////////////////////////////////////////////////////////

// Split Cartan -- diagonal matrices in GL(2,Z/nZ) -- E admits two distinct rational n-isogenies if and only if \im\rho_{E,n} is conjugate ot a subgroup of the split Cartan

// This function constructs the split Cartan matrices over GL(2,R)
function GL2SplitCartan(R)
    if Type(R) eq RngIntElt then R:=Integers(R); end if;
    M,pi:=MultiplicativeGroup(R);
    return sub<GL(2,R) | [[pi(g),0,0,1] : g in Generators(M)], [[1,0,0,pi(g)] : g in Generators(M)]>;
end function;

// Borel group -- upper triangular matrices in GL(2,Z/nZ) -- E admits a rational n-isogeny if and only if \im\rho_{E,n} is conjugate to a subgroup of  the Borel

// This function constructs the Borel matrices over GL(2,R)
function GL2Borel(R)
    if Type(R) eq RngIntElt then R:=Integers(R); end if;
    return sub<GL(2,R) | [1,1,0,1],GL2SplitCartan(R)>;
end function;

// This function constructs the subgroup of Borel that fixes a point of order n
function GL2Borel1(R)
    if Type(R) eq RngIntElt then R:=Integers(R); end if;
    M,pi:=MultiplicativeGroup(R);    
    return sub<GL(2,R) | [1,1,0,1], [[1,0,0,pi(g)] : g in Generators(M)]>;
end function;

// Checks whether H1 is conjugate to a subgroup of H2 in G
function IsConjugateToSubgroup(G,H1,H2)
    if not IsDivisibleBy(#H2,#H1) then return false; end if;
    n:=#H2 div #H1;
    return #[H:H in Subgroups(H2:IndexEqual:=n)|IsConjugate(G,H`subgroup,H1)] ne 0;
end function;


// Returns true of a matrix group over a ring R contains elements of every possible determinant
function FullDeterminantMap(H)
    M,pi:=MultiplicativeGroup(BaseRing(H));
    return sub<M|[Inverse(pi)(Determinant(h)):h in Generators(H)]> eq M;
end function;

// Compute the invariant factors of a finite Z/nZ-module of rank at most 2  (Magma apparently can't coerce Z/nZ-modules to abelian groups)
function ModuleInvariants(V)
    if Dimension(V) eq 0 then return []; end if;
    if Dimension(V) eq 1 then return [#V]; end if;
    assert Dimension(V) le 2;
    r1:=#sub<V|V.1>;  r2:=#sub<V|V.2>;
    return [GCD(r1,r2),LCM(r1,r2)];
end function;
   
// Given a subgroup of GL(2,Z/nZ), computes the invariants of the sub-module of Z/nZ x Z/nZ fixed by G (returns a list [], [a], or [a,b] with a|b|n)
function FixModule(H)
	V := Eigenspace(Identity(H),1);
	for h in Generators(H) do V:= V meet Eigenspace(Transpose(h),1); end for;	// take transpose to work with right eigenspaces
	return ModuleInvariants(V);
end function;

// Returns if the Z/nZ-module A contains a submodule isomorphic to B (where A and B are specified by invariants). 
function ModuleContains(A,B)
    i:=#A-#B;
    if i lt 0 then return false; end if;
    for j in [1..#B] do if not IsDivisibleBy(A[i+j],B[j]) then return false; end if; end for;
    return true;
end function;

// Returns true if a given subgroup of GL(2,Z/nZ) contains an element corresponding to complex conjugation
// Here we use the stronger criterion from Remark 3.5 of  Sutherland's "Computing images of Galois representations attached to elliptic curves".
function ContainsComplexConjugation(H)
    return #[h:h in H|Determinant(h) eq -1 and Trace(h) eq 0 and ModuleContains(FixModule(sub<H|h>),[#BaseRing(H)])] gt 0;
end function;

//////////////////////////////////////////////////////////////////////
//
//  Given a subgroup G of GL(2,Z/mZ) lifts or reduces the group to 
//  level n.
//  Function from Serre Constant Paper with Enrique
//
//////////////////////////////////////////////////////////////////////

function ChangeLevel(G,n)
    I := BaseRing(G);
    if #I ge n then
    H := ChangeRing(G,Integers(n));
    end if;
    if not #I ge n then
    GL2n := GL(2,Integers(n));
    _,pi  := ChangeRing(GL(2,Integers(n)),I);
    H := sub<GL2n | Inverse(pi)(G),Kernel(pi) >;
    end if;
    return H;
end function;

//////////////////////////////////////////////////////////////////////
//
//  Given two subgroups G1 and G2 of level n1 and n2 resp. with N = LCM(n1,n2)
//  returns the largest group in GL(2,Z/ N.Z) whose image mod n1 (resp. n2)
//  is in G1 (resp. G2). 
//  Function from Serre Constant Paper with Enrique
//
//////////////////////////////////////////////////////////////////////


function LiftGroups(G1,G2)
    N1 := #BaseRing(G1);
    N2 := #BaseRing(G2);
    N := LCM(N1,N2);
    G1Lift :=  ChangeLevel(G1,N);
    G2Lift :=  ChangeLevel(G2,N);
    return G1Lift meet G2Lift;
end function;




//////////////////////////////////////////////////////////////////////
//
//  Given a subgroup G of GL(2,Integers(n)) returns the name
//  of the the type of the maximal entangement as well as what fields
//  the common intersection lives in.
//
//////////////////////////////////////////////////////////////////////

function IsLEQ(Tuple1,Tuple2)
	a1 := Tuple1[1][1];
	b1 := Tuple1[1][2];
	a2 := Tuple2[1][1];
	b2 := Tuple2[1][2];
	H1 := Tuple1[2];
	H2 := Tuple2[2];
	if IsIsomorphic(H1,H2) then
		return (Integers(a2)!a1 eq 0 and Integers(b2)!b1 eq 0) or (Integers(b2)!a1 eq 0 and Integers(a2)!b1 eq 0);
	else
		return true in {IsIsomorphic(H1,H2/n`subgroup) : n in NormalSubgroups(H2) } and ((Integers(a1)!a2 eq 0 and Integers(b1)!b2 eq 0) or (Integers(b1)!a2 eq 0 and Integers(a1)!b2 eq 0));		
	end if;
end function;

function MaximalTuples(S)
	MaxTups := [];
	for t in S do
		if not true in { IsLEQ(t,tt) : tt in S | tt ne t} then
			Append(~MaxTups,t);
		end if;
	end for;
	return MaxTups;
end function;

function HasNontrivialabEntanglement(G,entlevel)
	n := #BaseRing(G);
    a := entlevel[1];
    b := entlevel[2];
	c := LCM(a,b);
	d := GCD(a,b);
    if d ne 1 then
		return false, " ", " "; 
	end if;
	GLn := GL(2,Integers(n));
	GLc,pic := ChangeRing(GLn,Integers(c));
	G := pic(G);
	GLa,pia := ChangeRing(GLc,Integers(a));
	GLb,pib := ChangeRing(GLc,Integers(b));
    d := GCD(a,c);
    GLd, pid := ChangeRing(GLc,Integers(d));
	Na := Kernel(pia) meet G;
	Nb := Kernel(pib) meet G;
	NabG := sub<G | Generators(Na), Generators(Nb) >;
    entgroup := G/NabG;
	return #(entgroup) gt 1, entgroup, NabG;
end function;

function MaxTG(G)
	n := #BaseRing(G);
	GLn := GL(2,Integers(n));
	divs := [d : d in Divisors(n) | not d in [1]];
	pairs := [ [a,b] : a,b in divs | a lt b and GCD(a,b) eq 1];
	Universe := [];
    test := [];
    for entlevel in pairs do
        boo, entgroup, NabG := HasNontrivialabEntanglement(G,entlevel);
        Append(~Universe,<entlevel,entgroup,NabG>);
        if boo then
			Append(~test, <entlevel,entgroup>);
        end if;
    end for;
	MaxTest := MaximalTuples(test);
    MaxUniverse := [trip : trip in Universe | <trip[1],trip[2]> in MaxTest];
	return MaxUniverse;
end function;

function RepresentsPrimitiveEntanglement(G)
	n := #BaseRing(G);
    SLn := SL(2,Integers(n));
    dataG := MaxTG(G);
    dataH := MaxTG(G meet SLn);
    if dataG eq [] then
    	return false, " ", " ", " ";
    end if;
	entlevG := dataG[1][1];
	entgroupG := dataG[1][2];
	NabG := dataG[1][3];
	if #dataG eq 1 then
    	if #dataH eq 0 then
    		enttypeH := "C1";
    	else
    		enttypeH := GroupName(dataH[1][2]);
    	end if;
        enttypeG := GroupName(entgroupG);
        enttype := [enttypeG,enttypeH];
		return LCM(entlevG) eq n, entlevG, enttype ,NabG;
	else
		return false, " ", " ", " ";
    end if;
end function;

function IsTotallyExplained(G,NabG)
    n := #BaseRing(G);
    return  EulerPhi(n) div #{Determinant(A) : A in NabG} eq Index(G,NabG);
end function;

//	Given a subgroup G of GL2(Z/nZ), returns the least divisor m for which G is the full inverse image of its reduction mod m
//  Taken from the Q(3) paper.
function GL2Level(G)
    if G eq GL(2,BaseRing(G)) then return 1; end if;
    return GCD([m:m in Divisors(#BaseRing(G)) | m gt 1 and Index(GL(2,Integers(m)),ChangeRing(G,Integers(m))) eq Index(GL(2,BaseRing(G)),G)]);
end function;


//////////////////////////////////////////////////////////////////////
//
//	Given a group G returns a boolean that indicates if the
//	entanglement represented by G has its integersection in the field
//	of defintion of an isogeny.
//
//////////////////////////////////////////////////////////////////////

function EntanglementInKerofdIsog(NabG, d)
 	n := #BaseRing(NabG);
    GLn := GL(2,Integers(n));
    GLd,pid := ChangeRing(GLn,Integers(d));
    return IsConjugateToSubgroup(GLd,GL2Borel1(d),pid(NabG));
end function;

//This could be made faster by making it only depend on NabG.
function EntanglementContainedInKerOfIsog(G)
	boo, entlevel, enttype, NabG := RepresentsPrimitiveEntanglement(G);
    n := #BaseRing(G);
    list := [d : d in Divisors(n) | not d in [1,n] and EntanglementInKerofdIsog(NabG, d)];
    if list eq [] then
    	return false,1;
    else
    	return true, GCD(list);
    end if;
end function;



function IsogGroup(G,a)
	n := #BaseRing(G);
	assert IsDivisibleBy(n,a);
	b := n div a;
	GLn := GL(2,Integers(n));
	if a eq n then
		return sub<GLn | [[A[2,2],A[1,2],A[2,1],A[1,1]] : A in Generators(G)]>;
	end if;
	GLa,pia := ChangeRing(GLn,Integers(a));
	GLb,pib := ChangeRing(GLn,Integers(b));
	NewGens := [];
	for A in Generators(G) do
		Aa := pia(A);
		Ab := pib(A);
		Aat := GLa![Aa[2,2],Aa[1,2],Aa[2,1],Aa[1,1]];
		for B in GLn do
			if pia(B) eq Aat and pib(B) eq Ab then
				Append(~NewGens,B);
			end if;
		end for;
	end for;
	return sub<GLn |NewGens>;
end function;


//	A helper function to clean up generators of groups.
function OrdSort(g1,g2)
	return Order(g2) - Order(g1);
end function;

//	This function does its best to not work very hard to find better generators for a group.
function CleanGens(G)
	list := Sort([A : A in G],OrdSort);	
	cleangens :=[];
	while list ne [] do
        A1 := list[1];
		Append(~cleangens,A1);
        H := sub<G|cleangens>;
		list := Sort([A : A in G | not A in H],OrdSort);
	end while;
	return [A : A in Generators(sub<G|cleangens>)];
end function;

function CleanGroup(G)
	return sub<G | CleanGens(G)>;
end function;









//////////////////////////////////////////////////////////////////////
//
//	Stuff to make the EntanglementGroupLabel command work.
//
//////////////////////////////////////////////////////////////////////

//Given a group g returns its name in the SZ16 label.
function GL2SZGroupName(g)
    if #g eq #GL(2,BaseRing(g)) then
        return IntegerToString(#BaseRing(g)) cat "G";
    end if;
    for k in Keys(gl2tab) do
		R := gl2tab[k];
		n := R`gl2level;
		if R`gl2level eq #BaseRing(g) then
			GL2 := GL(2,Integers(n));
			//DO WE NEED TO DEAL WITH THE TRANSPOSE HERE TOO?
            if IsConjugate(GL2, sub<GL2|R`gens>,sub<GL2|g,-Identity(GL2)>) then
				return k;
			end if;
		end if;
	end for;
    	return "Remove";
end function;

//Given a group g of prime level returns its name in Sutherland's notation.

function GL2SutherlandGroupName(G)
	n := #BaseRing(G);
	GLn :=GL(2,Integers(n));
	assert IsPrime(n);
	GroupsLev := [g : g in Keys(Groups) | Groups[g]`level eq n];
	name := "Remove";
	for g in GroupsLev do
		if IsConjugate(GLn, Groups[g]`group, sub<GLn | -Identity(GLn),G>) then
			name := g;
		end if;
	end for;
	if #G eq #GL(2,Integers(n)) then
		name := IntegerToString(n) cat "G";
	end if;
	return name;
end function;


//	A helper function that makes the following jmap funciton work.
//	From RZB.
function fileexists(str)
  retval := System("test -e " cat str);
  retval := retval div 256;
  ret := false;
  if (retval eq 0) then
    ret := true;
  end if;
  return ret;
end function;

//	From RZB. jmap(i) returns the jmap of X_i in the RZB database.
//	Requires the map files from RZB to be in the home directory.
function jmap(subnum)
	F<t> := FunctionField(Rationals());
	curmap := F!t;
	done := false;
	curgp := subnum;
	while (done eq false) do
    	if (curgp eq 1) then
			done := true;
			j := curmap;
    	else
			covernum := newsublist[curgp][7];
      		filename := Sprintf("%omap%o.txt",curgp,covernum);
      		filename1 := Sprintf("%map%o.txt",curgp,covernum);
      		maptocover := eval Read(filename);
      		newcurmap := maptocover([ curmap, 1])[1];
      		curmap := newcurmap;
      		curgp := covernum;
    	end if;
	end while;
	return curmap;
end function; 

function MatrixGroupTranspose(H)
	G := GL(2,BaseRing(H));
	return sub<G| [Transpose(A) : A in Generators(H) ]>;
end function;

//	Everything needs a transpose since they use row vectors.
TwoAdicImages := [MatrixGroupTranspose(newsublist[i][3]) : i in [1..#newsublist] ];

function RZBLabelGroup(G)
	n := #BaseRing(G);
    assert Integers(2)!n eq 0 and IsPrimePower(n);
    LevOfDef := GL2Level(G);
    if LevOfDef ne n then
    	G := ChangeRing(G, Integers(LevOfDef));
    end if;
    for i in [1..#TwoAdicImages] do
		if LevOfDef eq #BaseRing(TwoAdicImages[i]) then
			if IsConjugate( GL(2,Integers(LevOfDef) ), TwoAdicImages[i],G) then
				return "X_" cat IntegerToString(i),i;
            end if;
        end if;
    end for;
    return "Error";
end function;

function GL2GroupName(g)
	n := #BaseRing(g);
	GLn :=GL(2,Integers(n));
	name := "Remove";
	LevelOfDef := GL2Level(g);
	if LevelOfDef eq 1 then return "GL" cat IntegerToString(n); end if;
	GL2LevDef, piLD := ChangeRing(GLn,Integers(LevelOfDef));
	if not IsPrimePower(LevelOfDef) then
		name := "Composite Level of definition" cat IntegerToString(LevelOfDef);
	end if;
	if IsPrime(LevelOfDef) then
		name := GL2SutherlandGroupName(piLD(g));
	end if;
	if IsPrimePower(LevelOfDef) and not IsPrime(LevelOfDef) then
    	if Factorization(LevelOfDef)[1][1] eq 2 then
        	name := RZBLabelGroup(g);
        else
			name := GL2SZGroupName(piLD(g));
        end if;
	end if;
	return name;
end function;

function SL2GroupName(H)
	n := #BaseRing(H);
	SLn := SL(2,BaseRing(H));
	HSL := H meet SLn;
	H1 := sub<SLn | HSL , -Identity(SLn)>;
    d := SL2Level(H1);
    if d eq 1 then
		return "Full SL" cat IntegerToString(n);
    end if;
    SLd,pid := ChangeRing( SLn,Integers(d) );
    Htil := pid(H1);
	Universe := [];
	if d in Keys(CPGenus0) then
		Universe := Universe cat CPGenus0[d];
	end if;
	if d in Keys(CPGenus1) then
		Universe := Universe cat CPGenus1[d];
	end if;
	for vec in Universe do
    	Hcp := vec[1];
		if IsConjugate(SLd,Htil,Hcp) then
			return vec[2];
        end if;
    end for;
	return "Error";
end function;


function EntanglementGroupLabel(G,entlevel)
	n := #BaseRing(G);
    GLn := GL(2,Integers(n));
    label := [GL2GroupName(ChangeRing( G,Integers(l))) : l in entlevel];
	return label;
end function;





//////////////////////////////////////////////////////////////////////
//
//	Creating our record format and a funciton that will populate a
//	record with most of the data easily.
//
//////////////////////////////////////////////////////////////////////


EntanglementGroup := recformat<
	G : GrpMat,					//  The groups G. The star of the show!
    gens : SeqEnum,				//	The generators of G.
    level : RngIntElt,			//	The sixe of the base ring of G.
	H : GrpMat,					//	G meet SL2.
    entlevel : SeqEnum,			//  A pair [a,b] such that G represents an [a,b] entanglement
    enttype : SeqEnum,			//  The entanglemetn trype as a list [type(G),Type(H)/
    label : SeqEnum,			//	An ordered pair that describes the image of G mod a and mod b.
	NabG : GrpMat,				//  The normal subgroup associated with the (a,b) ent. N_{a,b}(G)
	index : RngIntElt,			//  [GL2 : G] = [SL2 : H] (since the determinant is full.
    jmap : FldFunRatUElt,		//  The j-map for the modular curve X_G.
    jInvs : SeqEnum,			//  A place to keep example j invariants.
    containsmI : BoolElt,		//	boo if -I in G.
	explained : BoolElt,		//  boo if the entagelement is totally explained.
    EntInKerOfIsog : BoolElt, 	//  boo if the entnagment is in the ker of an isogeny.
    EM : CrvEll,  				//  Only used for Genus 1 groups. This is where we keep the modular curve
	jEM : FldFunRatMElt  	    //  and its jmap as an element of Q(x,y).
>;



function CreateEntaglementGroupRec(g,elev, entty, NabG)
	n := #BaseRing(g);
	GLn := GL(2,Integers(n));
	SLn := SL(2,Integers(n));
	a := elev[1];
	b := elev[2];
	r := rec<EntanglementGroup |
		G := g,
    	gens := [A : A in Generators(g)],
    	level := n,
		H := g meet SLn,
    	entlevel := elev,
    	enttype := entty,
    	label := EntanglementGroupLabel(g,elev),
		NabG := NabG,
		index := Index(GLn,g),
        //jmap : FldFunRatUElt,
    	jInvs := [],
    	containsmI := (-Identity(g) in g),
        explained := IsTotallyExplained(g,NabG),
    	EntInKerOfIsog := EntanglementContainedInKerOfIsog(g) 	//  boo if the entnagment is in the ker of an isogeny.
    	//EM : CrvEll,  				//  Only used for Genus 1 groups. This is where we keep the modular curve
		//jEM : FldFunFracSchElt
	>;
	return r;
end function;


//////////////////////////////////////////////////////////////////////
//
//	Functions that take lists of groups (or Arrays of lists of group)
//	and returns the maximal groups by containment (up to conjugation)
//	in a list (or Array).
//
//////////////////////////////////////////////////////////////////////

//  Given a SeqEnum of subgroup of GL(2,integers(n)) for a fixed n, returns the maximal
//	groups of S up to conjugatation.
function MaximalGroups(S)
	assert #S ne 0;
	n := #BaseRing(S[1]);
	G := GL(2,Integers(n));
    I:=Sort([<Index(G,S[i]),i>:i in [1..#S]]);
    indexes:={i[1]:i in I};
    U:=[<S[I[1][2]],I[1][1],AssociativeArray(indexes)>];
    for n in indexes do if IsDivisibleBy(n,U[1][2]) then U[1][3][n] := [K`subgroup: K in Subgroups(U[1][1]:IndexEqual:=n div U[1][2])]; end if; end for;
    for i:=2 to #I do
        H:=S[I[i][2]];
        Hn :=I[i][1];
        keep := true;
        for j:=1 to #U do
            if IsDivisibleBy(Hn,U[j][2]) then
                for K in U[j][3][Hn] do assert #H eq #K; if IsConjugate(G,H,K) then keep:= false; break; end if; end for;
                if not keep then break; end if;
            end if;
        end for;
        if keep then
            r:=<H,Hn,AssociativeArray(indexes)>;
            for n in indexes do if IsDivisibleBy(n,Hn) then r[3][n] := [K`subgroup:K in Subgroups(H:IndexEqual:=n div Hn)]; end if; end for;
            U:=Append(U,r);
        end if;
    end for;
    t:=Cputime();
    S:=[r[1]:r in U];
    return S;
end function;    


//	Same thing as the last gunction, but does it for Arrays
function MaximalGroupsArray(Array)
	ReturnThis := AssociativeArray();
    for k in Keys(Array) do
		test := [r`G : r in Array[k]];
        max := MaximalGroups(test);
        ReturnThis[k] := [r : r in Array[k] | r`G in max ];
    end for;
    return ReturnThis;
end function;

/*
//////////////////////////////////////////////////////////////////////
//
//	Some functions that tell you what kind of isogenies a curve must
//  if its mod n represenatation is contained in a given group G.
//
//////////////////////////////////////////////////////////////////////

//  Given a group G returns an ordered pair [n1,n2] where any elliptic curve with
//	mod n image contained in G must have an independent n1- and n2-isogeny with n1 | n2.
//  We call [n1,n2] an isogeny type.
function IsogenyType(G)
	test := [];
    n := #BaseRing(G);
	for d in Divisors(n) do
    	if d ge 2 then
		if IsConjugateToSubgroup(GL(2,Integers(d)), ChangeLevel(G,d), GL2SplitCartan(d) )then
			Append(~test,[d,d]);
        end if;
        if IsConjugateToSubgroup(GL(2,Integers(d)), ChangeLevel(G,d), GL2Borel(d)) then
			Append(~test,[1,d]);
        end if;
        end if;
    end for;
    if test eq [] then return [1,1]; end if;
    return [    LCM([t[1] : t in test]),   LCM([t[2] : t in test])   ];
end function;

//	Given an isogeny type [n1,n2], returns the largest group G in GL(2,Integers(lev))
//	such that any curve with mod lev image in G has an independnent n1- and n2-isogeny
//	with n1 | n2.
function IsogenyTypeToGroup(IsoType,lev)
	S := IsoType[1];
    B := IsoType[2];
	return ChangeLevel(LiftGroups(GL2SplitCartan(S),GL2Borel(B)),lev);
end function;





*/
