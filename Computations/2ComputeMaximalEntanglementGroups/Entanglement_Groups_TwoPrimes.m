//////////////////////////////////////////////////////////////////////
//
//  We sort the admissible genus 0 and 1 cases from the file
//  Compute_Subgroups_Two_Primes.m
//
//////////////////////////////////////////////////////////////////////

load "~/EntanglementGroups/AuxillaryFiles/Group_functions.m";
//This loads the code to compute the rank of a genus 1 modular curve from the subgroup of GL(2,Integers(n)) from SZ16.
load "~/EntanglementGroups/AuxillaryFiles/[SZ17]/JacobianRank.m";

load "~/EntanglementGroups/LoadableFiles/SubgroupArrayTwoPrimes.m";


Genus0 := AssociativeArray();
Genus1r0 := AssociativeArray();
Genus1rp := AssociativeArray();

time for n in Sort([ k : k in Keys(SubgroupArray)]) do
	printf "\nSorting the level %o groups computed in the previous step by genus.\n",n;
	GLn := GL(2,Integers(n));
	s0 := Cputime();
    SG := SubgroupArray[n];
	SG0 := [h : h in SG | IsGen0(h)];
	SG1 := [h : h in SG | IsGen1(h)];
    t0 := Cputime();
    printf "Cputime = %o seconds.\n",t0-s0;
	s1 := Cputime();
	printf "Computing the level %o entanglements.\n",n;
    t1 := Cputime();
	for g in SG0 do
        boo, entlevel, enttype, NabG := RepresentsPrimitiveEntanglement(g);
        if boo then
            if <entlevel,enttype> in Keys(Genus0) then
                Append(~Genus0[<entlevel,enttype>],CreateEntaglementGroupRec(g,entlevel, enttype, NabG));
            else
                Genus0[<entlevel,enttype>] :=[ CreateEntaglementGroupRec(g,entlevel,enttype,NabG) ];
            end if;
    	end if;
	end for;
	for g in SG1 do
		boo, entlevel, enttype, NabG := RepresentsPrimitiveEntanglement(g);
		if boo then
			name, rnk := JacobianOfXG(sub<GLn | g, -Identity(GLn)>);
			if rnk ge 1 then
				if <entlevel,enttype> in Keys(Genus1rp) then
					Append(~Genus1rp[<entlevel,enttype>],CreateEntaglementGroupRec(g,entlevel, enttype, NabG));
				else
					Genus1rp[<entlevel,enttype>] :=[CreateEntaglementGroupRec(g,entlevel, enttype, NabG)];
				end if;
			end if;
			if rnk eq 0 then
				if <entlevel,enttype> in Keys(Genus1r0) then
					Append(~Genus1r0[<entlevel,enttype>],CreateEntaglementGroupRec(g,entlevel, enttype, NabG));
				else
					Genus1r0[<entlevel,enttype>] :=[CreateEntaglementGroupRec(g,entlevel, enttype, NabG)];
				end if;
			end if;
		end if;
    end for;
    t1 := Cputime();
    printf "Cputime = %o Seconds.\n\n",t1-s1;
end for;

//Sort([k :k in Keys(Genus0)]);
//Sort([k :k in Keys(Genus1rp)]);


//PrintGenus1Level30Grps("~/EntanglementGroups/LoadableFiles/Level30Genus1.m");


//////////////////////////////////////////////////////////////////////
//
//  Lets make a procedure to print the results of the above search
//  to a file so we can start here in the future.
//  Simply load Genus0Genus1.m.
//
//////////////////////////////////////////////////////////////////////


//A function that takes as its input an Array, directory, name for the printed directory
function PrintEntanglementArray(Array,Dir, NewName)
	keys := Sort([k : k in Keys(Array)]);
    k := keys[1];
	fprintf Dir, "%o := %o;\n\n", "EntaglementGroup", Format(Array[k][1]);
	fprintf Dir, "%o := AssociativeArray();\n\n", NewName;
    for k in keys do
		fprintf Dir, "%o[<%o, [\"%o\", \"%o\"]>] := [",NewName,k[1],k[2][1],k[2][2];
		for r in Array[k] do
			fprintf Dir, "rec<EntaglementGroup |";
        		fprintf Dir, "G:=sub<GL(2,Integers(%o)) | %o>, ",r`level,[[A[1,1],A[1,2],A[2,1],A[2,2]] : A in Generators(r`G)];
				fprintf Dir, "gens := %o, ", [[A[1,1],A[1,2],A[2,1],A[2,2]] : A in Generators(r`G)];
				fprintf Dir, "level := %o, ", r`level;
                fprintf Dir, "entlevel := %o, ", r`entlevel;
				fprintf Dir, "enttype := [\"%o\", \"%o\"], ",(r`enttype)[1],(r`enttype)[2];
				fprintf Dir, "H:=sub<SL(2,Integers(%o)) | %o>, ",#BaseRing(r`H),[[A[1,1],A[1,2],A[2,1],A[2,2]] : A in Generators(r`H)];
				fprintf Dir, "label := [\"%o\", \"%o\"], ",(r`label)[1],(r`label)[2];
				fprintf Dir, "NabG:=sub<GL(2,Integers(%o)) | %o>, ",r`level,[[A[1,1],A[1,2],A[2,1],A[2,2]] : A in Generators(r`NabG)];
        		fprintf Dir, "index := %o, ", r`index;
                fprintf Dir, "jInvs := %o, ", r`jInvs;
				fprintf Dir, "containsmI := %o, ",r`containsmI;
                fprintf Dir, "explained := %o, ",r`explained;
                fprintf Dir, "EntInKerOfIsog := %o ",r`EntInKerOfIsog;
            fprintf Dir, ">";
            if r`G ne Array[k][#Array[k]]`G then
                fprintf Dir, ",\n";
            end if;
            end for;
        fprintf Dir, "];\n";
    end for;
    return "Done!";
end function;

print "Printing Genus0Genus1.m";

procedure PrintGenus0Genus1()
	PrintEntanglementArray(Genus0,"~/EntanglementGroups/LoadableFiles/Genus0Genus1.m", "Genus0");
	PrintEntanglementArray(Genus1r0,"~/EntanglementGroups/LoadableFiles/Genus0Genus1.m", "Genus1r0");
	PrintEntanglementArray(Genus1rp,"~/EntanglementGroups/LoadableFiles/Genus0Genus1.m", "Genus1rp");
end procedure;

	PrintGenus0Genus1();
//	load "Genus0Genus1.m";



//////////////////////////////////////////////////////////////////////
//
//  Let's clean up what we have by removing the images that can't
//  happen infinitely often since the mod p^n image doesn't occur
//  in the Sutherland Zwyina paper.
//
//////////////////////////////////////////////////////////////////////

printf "Removing the groups that don't appear in the SZ list or represent\n totally explained entnaglements.\n";

CleanGenus0 := AssociativeArray();
CleanGenus1r0 := AssociativeArray();
CleanGenus1rp := AssociativeArray();

for k in Keys(Genus0) do
	for r in Genus0[k] do
		if "Remove" notin r`label and not r`explained then
        	if k in Keys(CleanGenus0) then
				Append(~CleanGenus0[k],r);
            else
            	CleanGenus0[k] :=[r];
            end if;
        end if;
    end for;
end for;




for k in Keys(Genus1r0) do
	for r in Genus1r0[k] do
		if "Remove" notin r`label and not r`explained then
        	if k in Keys(CleanGenus1r0) then
				Append(~CleanGenus1r0[k],r);
            else
            	CleanGenus1r0[k] :=[r];
            end if;
        end if;
    end for;
end for;


for k in Keys(Genus1rp) do
	for r in Genus1rp[k] do
		if "Remove" notin r`label and not r`explained then
        	if k in Keys(CleanGenus1rp) then
				Append(~CleanGenus1rp[k],r);
            else
            	CleanGenus1rp[k] :=[r];
            end if;
        end if;
    end for;
end for;



printf "\nComputing the maximal groups of genus 0...\n";
time MaxCleanGenus0 := MaximalGroupsArray(CleanGenus0);
printf "\nDone!\n\nComputing the maximal groups of genus 1 with rank 0...\n";
time MaxCleanGenus1r0 := MaximalGroupsArray(CleanGenus1r0);
print "Done!\n\nComputing the maximal groups of genus 1 with posititve rank...\n\n";
time MaxCleanGenus1rp := MaximalGroupsArray(CleanGenus1rp);


//////////////////////////////////////////////////////////////////////
//
//  Let's print the results.
//
//////////////////////////////////////////////////////////////////////

print "Printing MaxClean.m";

procedure PrintMaxClean()
	PrintEntanglementArray(MaxCleanGenus0,"~/EntanglementGroups/LoadableFiles/MaxClean.m", "MaxCleanGenus0");
    PrintEntanglementArray(MaxCleanGenus1r0,"~/EntanglementGroups/LoadableFiles/MaxClean.m", "MaxCleanGenus1r0");
    PrintEntanglementArray(MaxCleanGenus1rp,"~/EntanglementGroups/LoadableFiles/MaxClean.m", "MaxCleanGenus1rp");
    fprintf "~/EntanglementGroups/LoadableFiles/MaxClean.m","MaxCleanGenus0GalSort := AssociativeArray();";
    fprintf "~/EntanglementGroups/LoadableFiles/MaxClean.m", "for k in Sort([k : k in Keys(MaxCleanGenus0)]) do";
	fprintf "~/EntanglementGroups/LoadableFiles/MaxClean.m", "	if not k in Keys(MaxCleanGenus0GalSort) then";
    fprintf "~/EntanglementGroups/LoadableFiles/MaxClean.m", "		MaxCleanGenus0GalSort[k] := AssociativeArray();";
    fprintf "~/EntanglementGroups/LoadableFiles/MaxClean.m", "	end if;";
    fprintf "~/EntanglementGroups/LoadableFiles/MaxClean.m", "	for r in MaxCleanGenus0[k] do";
	fprintf "~/EntanglementGroups/LoadableFiles/MaxClean.m", "		if r`label in Keys(MaxCleanGenus0GalSort[k]) then";
	fprintf "~/EntanglementGroups/LoadableFiles/MaxClean.m", "			Append(~MaxCleanGenus0GalSort[k][r`label],r);";
    fprintf "~/EntanglementGroups/LoadableFiles/MaxClean.m", "   	else";
    fprintf "~/EntanglementGroups/LoadableFiles/MaxClean.m", "    		MaxCleanGenus0GalSort[k][r`label]:=[r];";
    fprintf "~/EntanglementGroups/LoadableFiles/MaxClean.m", "	    end if;";
    fprintf "~/EntanglementGroups/LoadableFiles/MaxClean.m", "	end for;";
	fprintf "~/EntanglementGroups/LoadableFiles/MaxClean.m", "end for;";
end procedure;





PrintMaxClean();
/*

MaxCleanGenus0GalSort := AssociativeArray();

for k in Sort([k : k in Keys(MaxCleanGenus0)]) do
	if not k in Keys(MaxCleanGenus0GalSort) then
		MaxCleanGenus0GalSort[k] := AssociativeArray();
    end if;
    for r in MaxCleanGenus0[k] do
		if r`label in Keys(MaxCleanGenus0GalSort[k]) then
			Append(~MaxCleanGenus0GalSort[k][r`label],r);
        else
        	MaxCleanGenus0GalSort[k][r`label]:=[r];
        end if;
    end for;
end for;

r1 := MaxCleanGenus0GalSort[<[2,5],["C2","C2"]>][["GL2","5B.4.1"]][1];
boo, entlevel, enttype, NabG := RepresentsPrimitiveEntanglement(r1`G);

function EntanglementInKerofdIsog(NabG, d)
 	n := #BaseRing(NabG);
    GLn := GL(2,Integers(n));
    GLd,pid := ChangeRing(GLn,Integers(d));
    return IsConjugateToSubgroup(GLd,GL2Borel1(d),pid(NabG));
end function;

function EntanglementContainedInKerOfIsog(NabG)
	n := #BaseRing(NabG);
    list := [d : d in Divisors(n) | not d in [1,n] and EntanglementInKerofdIsog(NabG, d)];
    if list eq [] then
    	return false,1;
    else
    	return true, GCD(list);
    end if;
end function;


*/


















