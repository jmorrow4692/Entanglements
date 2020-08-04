//////////////////////////////////////////////////////////////////////
//
//	Here we will illustrate how to use the data we collected
//
//////////////////////////////////////////////////////////////////////


// Go into the folder LoadableFiles
// Load MaxCleaWithModels
load "MaxCleanWithModels.m";

// To see all of the keys for the genus 0 array
[k : k in Keys(MaxCleanGenus0WithModels) ]; 

// To see all of the keys for the genus 1 array
[k : k in Keys(MaxCleanGenus1rpWithModels) ]; 

// Note that there are a total of 9 keys, which is the statement of our main result.

// To access a particular key e.g., <[ 2, 7 ], [ C3, C3 ]> do
// This will give 3 records, corresponding to the 3 entries in the (2,7)-entanglements of Z/3Z-type table in Section 8.
MaxCleanGenus0WithModels[<[ 2, 7 ], [ "C3", "C3" ]>];

// To get one's hands on a particular record simply do
r1 := MaxCleanGenus0WithModels[<[ 2, 7 ], [ "C3", "C3" ]>][1];

// From here, one can get all of the possible information needed by following the record labels. 
// For example, to get the admissible group representing this (2,7)-entanglement of Z/3Z-type do

r1`G;

// to get the group N_{a,b}(G) defined in Remark 3.3 do

r1`NabG;

// to get the j-map for G do

r1`jmap;

