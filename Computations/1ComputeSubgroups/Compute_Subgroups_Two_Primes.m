load "~/EntanglementGroups/AuxillaryFiles/Group_functions.m";


//These are the levels where we might find genus 0 or genus 1 unexplained entanglements
levels := Sort([k : k in Keys(CPGenus0) join Keys(CPGenus1)]);


//////////////////////////////////////////////////////////////////////
//
//  For each level n in levels that is not a prime power or in 
//  [48] we compute the subgroups of GL(2,Integers(n)) up
//  to conjugation and put the admissible ones in the array SubgroupArray.
//  The keys of SubgroupArray are the levels. 
//
//////////////////////////////////////////////////////////////////////

function ComputeSubgroups(list)
	SubgroupArray := AssociativeArray();
	for n in list do
		if not IsPrimePower(n) then
			s := Cputime();
            printf "Computing the subgroups of GL(2,Integers(%o)) and adding them to SubgroupsArray.\n", n;
			SubgroupArray[n] := [CleanGroup(h`subgroup) : h in Subgroups(GL(2,Integers(n)))| FullDeterminantMap(h`subgroup) and ContainsComplexConjugation(h`subgroup)];
            t := Cputime();
            printf "Cputime := %o\n\n",t-s;
		end if;
	end for;
	return SubgroupArray;
end function;

time SubgroupArray := ComputeSubgroups([l : l in levels| #Factorization(l) eq 2 and &+[ fac[2] : fac in Factorization(l)  ] eq 2 ]);

//load "SubgroupArray.txt";

//////////////////////////////////////////////////////////////////////
//
//	This is far too much data to carry around. Lets print it to a
//	loadable file and only load it when we need it.
//
//////////////////////////////////////////////////////////////////////


function PrintSubgroupArray(Dir)
	fprintf Dir, "SubgroupArray := AssociativeArray();\n";
	for k in Sort(Setseq(Keys(SubgroupArray))) do
		fprintf Dir, "SubgroupArray[%o] := [",k;
		for g in SubgroupArray[k] do
			gens := [[A[1,1],A[1,2],A[2,1],A[2,2]] : A in Generators(g)];
        	if g ne SubgroupArray[k][#SubgroupArray[k]] then
				fprintf Dir, "sub<GL(2,Integers(%o)) | %o >,",k,gens;
        	else
 				fprintf Dir, "sub<GL(2,Integers(%o)) | %o >",k,gens;
        	end if;
		end for;
		fprintf Dir, "];\n";
	end for;
    return "Subgroup Array has printed.";
end function;

print "Printing SubgroupArray.m";
PrintSubgroupArray("~/EntanglementGroups/LoadableFiles/SubgroupArrayTwoPrimes.m");
print "Done!";
