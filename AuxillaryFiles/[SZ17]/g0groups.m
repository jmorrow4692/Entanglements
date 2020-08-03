// Magma code and data related to "Modular curves of prime power level with infinitely many rational points",
// by Andrew V. Sutherland and David Zywina.

load "~/EntanglementGroups/AuxillaryFiles/[SZ17]/GL2Invariants.m";         // Utility functions for working with subgroups of GL(2,Z/NZ)
load "~/EntanglementGroups/AuxillaryFiles/[SZ17]/RationalFunctions.m";     // Used to perform Cauchy interpolation of rational functions

sl2tab:=AssociativeArray();     // table of open subgroups of SL(2,Zhat) containing -1 of bounded genus and prime-power level represented by image in SL(2,Z/qZ)
gl2tab:=AssociativeArray();     // table of open subgroups of GL(2,Zhat) containing -1 of bounded genus and prime-power level represented by image in GL(2,Z/qZ) with full det and cc

// The table of genus zero subgroups of SL(2,Z) taken from the Cummins-Pauli tables at
// http://www.uncg.edu/mat/faculty/pauli/congruence/congruence.html
// We use more compact lists of generators to speed things up, but they generate the exact same groups

sl2rec := recformat<label:MonStgElt,level:Integers(),index:Integers(),gens:SeqEnum>;
sl2tab["1A0"]:=rec<sl2rec|label:="1A0", level:=1, index:=1, gens:=[]>;
sl2tab["2A0"]:=rec<sl2rec|label:="2A0", level:=2, index:=2, gens:=[[0,1,1,1]]>;
sl2tab["2B0"]:=rec<sl2rec|label:="2B0", level:=2, index:=3, gens:=[[0,1,1,0]]>;
sl2tab["2C0"]:=rec<sl2rec|label:="2C0", level:=2, index:=6, gens:=[]>;
sl2tab["4A0"]:=rec<sl2rec|label:="4A0", level:=4, index:=4, gens:=[[1,1,1,2],[0,1,3,0]]>;
sl2tab["4B0"]:=rec<sl2rec|label:="4B0", level:=4, index:=6, gens:=[[3,0,0,3],[0,1,3,2]]>;
sl2tab["4C0"]:=rec<sl2rec|label:="4C0", level:=4, index:=6, gens:=[[1,2,2,1],[0,1,3,0]]>;
sl2tab["4D0"]:=rec<sl2rec|label:="4D0", level:=4, index:=8, gens:=[[2,1,1,3]]>;
sl2tab["4E0"]:=rec<sl2rec|label:="4E0", level:=4, index:=12, gens:=[[3,0,0,3],[1,2,2,1]]>;
sl2tab["4F0"]:=rec<sl2rec|label:="4F0", level:=4, index:=12, gens:=[[0,1,3,0]]>;
sl2tab["4G0"]:=rec<sl2rec|label:="4G0", level:=4, index:=24, gens:=[[3,0,0,3]]>;
sl2tab["8A0"]:=rec<sl2rec|label:="8A0", level:=8, index:=8, gens:=[[0,3,5,0],[3,2,5,1]]>;
sl2tab["8B0"]:=rec<sl2rec|label:="8B0", level:=8, index:=12, gens:=[[3,0,0,3],[0,3,5,0],[1,2,2,5]]>;
sl2tab["8C0"]:=rec<sl2rec|label:="8C0", level:=8, index:=12, gens:=[[3,0,0,3],[5,0,0,5],[0,3,5,2]]>;
sl2tab["8D0"]:=rec<sl2rec|label:="8D0", level:=8, index:=12, gens:=[[2,1,3,2],[0,3,5,0]]>;
sl2tab["8E0"]:=rec<sl2rec|label:="8E0", level:=8, index:=16, gens:=[[3,4,0,3],[2,3,3,5]]>;
sl2tab["8F0"]:=rec<sl2rec|label:="8F0", level:=8, index:=16, gens:=[[1,1,1,2],[0,3,5,0]]>;
sl2tab["8G0"]:=rec<sl2rec|label:="8G0", level:=8, index:=24, gens:=[[1,2,0,1],[3,0,0,3],[5,0,0,5]]>;
sl2tab["8H0"]:=rec<sl2rec|label:="8H0", level:=8, index:=24, gens:=[[3,0,0,3],[1,4,4,1],[0,3,5,0]]>;
sl2tab["8I0"]:=rec<sl2rec|label:="8I0", level:=8, index:=24, gens:=[[7,0,0,7],[2,3,5,4]]>;
sl2tab["8J0"]:=rec<sl2rec|label:="8J0", level:=8, index:=24, gens:=[[3,2,0,3],[5,2,0,5],[1,2,4,1]]>;
sl2tab["8K0"]:=rec<sl2rec|label:="8K0", level:=8, index:=24, gens:=[[1,4,0,1],[0,3,5,0]]>;
sl2tab["8L0"]:=rec<sl2rec|label:="8L0", level:=8, index:=24, gens:=[[4,3,5,4],[5,2,2,1]]>;
sl2tab["8M0"]:=rec<sl2rec|label:="8M0", level:=8, index:=32, gens:=[[2,3,3,5],[5,2,3,3]]>;
sl2tab["8N0"]:=rec<sl2rec|label:="8N0", level:=8, index:=48, gens:=[[1,4,0,1],[7,0,0,7],[1,0,4,1]]>;
sl2tab["8O0"]:=rec<sl2rec|label:="8O0", level:=8, index:=48, gens:=[[3,2,0,3],[5,2,0,5]]>;
sl2tab["8P0"]:=rec<sl2rec|label:="8P0", level:=8, index:=48, gens:=[[3,4,4,3],[4,3,5,4]]>;
sl2tab["16A0"]:=rec<sl2rec|label:="16A0", level:=16, index:=16, gens:=[[0,5,3,0],[1,6,3,3]]>;
sl2tab["16B0"]:=rec<sl2rec|label:="16B0", level:=16, index:=24, gens:=[[3,0,0,11],[0,3,5,0],[1,2,2,5]]>;
sl2tab["16C0"]:=rec<sl2rec|label:="16C0", level:=16, index:=24, gens:=[[7,0,0,7],[3,8,0,11],[0,3,5,2]]>;
sl2tab["16D0"]:=rec<sl2rec|label:="16D0", level:=16, index:=24, gens:=[[7,0,0,7],[3,0,0,11],[0,5,3,6]]>;
sl2tab["16E0"]:=rec<sl2rec|label:="16E0", level:=16, index:=24, gens:=[[2,1,3,2],[0,3,5,0]]>;
sl2tab["16F0"]:=rec<sl2rec|label:="16F0", level:=16, index:=32, gens:=[[3,4,0,11],[6,3,7,9]]>;
sl2tab["16G0"]:=rec<sl2rec|label:="16G0", level:=16, index:=48, gens:=[[1,2,0,1],[7,0,0,7],[3,0,8,11]]>;
sl2tab["16H0"]:=rec<sl2rec|label:="16H0", level:=16, index:=48, gens:=[[7,0,0,7],[9,0,0,9],[0,7,9,2]]>;
sl2tab["32A0"]:=rec<sl2rec|label:="32A0", level:=32, index:=48, gens:=[[3,8,0,11],[5,8,0,13],[0,7,9,2]]>;
sl2tab["3A0"]:=rec<sl2rec|label:="3A0", level:=3, index:=3, gens:=[[0,1,2,0],[1,1,1,2]]>;
sl2tab["3B0"]:=rec<sl2rec|label:="3B0", level:=3, index:=4, gens:=[[0,1,2,1]]>;
sl2tab["3C0"]:=rec<sl2rec|label:="3C0", level:=3, index:=6, gens:=[[1,2,2,2]]>;
sl2tab["3D0"]:=rec<sl2rec|label:="3D0", level:=3, index:=12, gens:=[[2,0,0,2]]>;
sl2tab["9A0"]:=rec<sl2rec|label:="9A0", level:=9, index:=9, gens:=[[2,1,1,1],[0,2,4,0]]>;
sl2tab["9B0"]:=rec<sl2rec|label:="9B0", level:=9, index:=12, gens:=[[2,0,0,5],[1,0,1,1]]>;
sl2tab["9C0"]:=rec<sl2rec|label:="9C0", level:=9, index:=12, gens:=[[2,0,0,5],[4,3,2,4]]>;
sl2tab["9D0"]:=rec<sl2rec|label:="9D0", level:=9, index:=18, gens:=[[2,0,0,5],[1,3,3,1],[0,2,4,0]]>;
sl2tab["9E0"]:=rec<sl2rec|label:="9E0", level:=9, index:=18, gens:=[[2,0,0,5],[3,2,4,3]]>;
sl2tab["9F0"]:=rec<sl2rec|label:="9F0", level:=9, index:=27, gens:=[[4,1,1,5],[6,1,2,2]]>;
sl2tab["9G0"]:=rec<sl2rec|label:="9G0", level:=9, index:=27, gens:=[[2,1,1,1],[3,2,4,6]]>;
sl2tab["9H0"]:=rec<sl2rec|label:="9H0", level:=9, index:=36, gens:=[[2,0,0,5],[1,3,6,1]]>;
sl2tab["9I0"]:=rec<sl2rec|label:="9I0", level:=9, index:=36, gens:=[[2,0,1,5]]>;
sl2tab["9J0"]:=rec<sl2rec|label:="9J0", level:=9, index:=36, gens:=[[1,0,3,1],[2,3,2,8]]>;
sl2tab["27A0"]:=rec<sl2rec|label:="27A0", level:=27, index:=36, gens:=[[4,9,0,7],[2,9,1,5]]>;
sl2tab["5A0"]:=rec<sl2rec|label:="5A0", level:=5, index:=5, gens:=[[2,1,0,3],[1,2,2,0]]>;
sl2tab["5B0"]:=rec<sl2rec|label:="5B0", level:=5, index:=6, gens:=[[2,2,0,3],[0,2,2,2]]>;
sl2tab["5C0"]:=rec<sl2rec|label:="5C0", level:=5, index:=10, gens:=[[3,1,0,2],[1,2,2,0]]>;
sl2tab["5D0"]:=rec<sl2rec|label:="5D0", level:=5, index:=12, gens:=[[1,1,1,2]]>;
sl2tab["5E0"]:=rec<sl2rec|label:="5E0", level:=5, index:=15, gens:=[[2,1,0,3],[2,0,2,3]]>;
sl2tab["5F0"]:=rec<sl2rec|label:="5F0", level:=5, index:=20, gens:=[[1,2,2,0]]>;
sl2tab["5G0"]:=rec<sl2rec|label:="5G0", level:=5, index:=30, gens:=[[3,1,0,2]]>;
sl2tab["5H0"]:=rec<sl2rec|label:="5H0", level:=5, index:=60, gens:=[[4,0,0,4]]>;
sl2tab["25A0"]:=rec<sl2rec|label:="25A0", level:=25, index:=30, gens:=[[2,12,0,13],[0,6,4,0]]>;
sl2tab["25B0"]:=rec<sl2rec|label:="25B0", level:=25, index:=60, gens:=[[9,10,0,14],[0,7,7,2]]>;
sl2tab["7A0"]:=rec<sl2rec|label:="7A0", level:=7, index:=7, gens:=[[2,2,0,4],[0,2,3,3]]>;
sl2tab["7B0"]:=rec<sl2rec|label:="7B0", level:=7, index:=8, gens:=[[2,2,0,4],[0,3,2,1]]>;
sl2tab["7C0"]:=rec<sl2rec|label:="7C0", level:=7, index:=14, gens:=[[2,2,0,4],[2,0,1,4]]>;
sl2tab["7D0"]:=rec<sl2rec|label:="7D0", level:=7, index:=21, gens:=[[0,3,2,0],[1,4,2,2]]>;
sl2tab["7E0"]:=rec<sl2rec|label:="7E0", level:=7, index:=24, gens:=[[2,4,3,3]]>;
sl2tab["7F0"]:=rec<sl2rec|label:="7F0", level:=7, index:=28, gens:=[[0,3,2,0],[3,4,2,3]]>;
sl2tab["7G0"]:=rec<sl2rec|label:="7G0", level:=7, index:=42, gens:=[[0,3,2,0],[4,1,4,3]]>;
sl2tab["11A0"]:=rec<sl2rec|label:="11A0", level:=11, index:=11, gens:=[[3,3,0,4],[2,3,4,1]]>;
sl2tab["13A0"]:=rec<sl2rec|label:="13A0", level:=13, index:=14, gens:=[[2,2,0,7],[1,2,1,3]]>;
sl2tab["13B0"]:=rec<sl2rec|label:="13B0", level:=13, index:=28, gens:=[[3,5,0,9],[0,4,3,1]]>;
sl2tab["13C0"]:=rec<sl2rec|label:="13C0", level:=13, index:=42, gens:=[[8,4,0,5],[0,3,4,2]]>;

g0gl2rec := recformat<label:MonStgElt,sl2label:MonStgElt,gl2level:Integers(),sl2level:Integers(),index:Integers(),gl2id:Integers(),gens:SeqEnum,msubs:SeqEnum,msups:SeqEnum,jlist:SeqEnum,jmap:MonStgElt,twin:Integers(),note:MonStgElt>;

// record for (conjugacy classes of) open subgroups G of GL(2,Zhat) of prime power level and genus 0 with surjective det map and complex conjugation
// these records are stored in gl2tab, which also contains records for genus 0 groups with a slightly different format (see g0groups.m)
g0gl2rec := recformat<
    label:MonStgElt,          // label of the form s-t where s is an sl2label in Cummins-Pauli format and t is of the form Nc, where N is the gl2-level and c is a lower-case letter
    genus:Integers(),         // always 0, also encoded in label
    sl2label:MonStgElt,       // Cummins-Pauli label of intersection with sl2, prefix of label
    gl2level:Integers(),      // minimal integer n such that group is the full inverse image of its projection to GL(2,Z/nZ), always a prime power
    sl2level:Integers(),      // level of the intersection of G with SL(2,Zhat) -- necessarily divides the gl2level but may be smaller
    index:Integers(),         // index in GL(2,Zhat) (same as index of its intersection with sl2 because det map is surjective)
    gl2id:Integers(),         // unique identifier of a conjugacy class of a subgroup of GL(2,Z/nZ) -- not used here
    gens:SeqEnum,             // matrix generators for image in GL(2,Z/nZ), contains a prefix generating intersection with SL(2,Z/nZ)
    msubs:SeqEnum,            // labels of all maximal subgroups in this list (i.e. of genus 0)
    msups:SeqEnum,            // labels of all minimal supergroups H in this list (necessarily of genus 0)
    msupmaps:SeqEnum,         // list of strings that evaluate to a rational maps from X_G to X_H, where H is the corresponding group in msups
    jlist:SeqEnum,            // list of known j-invariants corresponding to points on X_G
    jmap:MonStgElt,           // text string that evaluates to a rational map from X_G to the j-line
    twin:MonStgElt,           // label of a group locally conjugate to G
    note:MonStgElt            // text string with a note on how locally conjugate groups were distinguished
>;

gl2tab["1A0-1a"]:=rec<g0gl2rec|
    label:="1A0-1a", genus:=0, sl2label:="1A0", gl2level:=1, sl2level:=1, index:=1, gl2id:=1,
    gens:=[],
    msubs:=["2A0-2a", "2A0-4a", "2A0-8a", "2A0-8b", "2B0-2a", "3A0-3a", "3B0-3a", "4A0-4a", "5A0-5a", "5B0-5a", "5C0-5a", "7B0-7a", "7D0-7a", "7F0-7a", "9F0-9a", "13A0-13a"],
    msups:=[],
    msupmaps:=[],
    jlist:=[1,2,3],
    jmap:="t">;
gl2tab["2A0-2a"]:=rec<g0gl2rec|
    label:="2A0-2a", genus:=0, sl2label:="2A0", gl2level:=2, sl2level:=2, index:=2, gl2id:=1,
    gens:=[[0,1,1,1]],
    msubs:=["2C0-2a"],
    msups:=["1A0-1a"],
    msupmaps:=["t^2+1728"],
    jlist:=[1792,790272,406749952],
    jmap:="t^2+1728">;
gl2tab["2A0-4a"]:=rec<g0gl2rec|
    label:="2A0-4a", genus:=0, sl2label:="2A0", gl2level:=4, sl2level:=2, index:=2, gl2id:=60,
    gens:=[[1,2,0,1],[1,1,1,2],[1,1,0,3]],
    msubs:=["2C0-4a","4D0-4a"],
    msups:=["1A0-1a"],
    msupmaps:=["-t^2+1728"],
    jlist:=[-24729001,-121,24167/16],
    jmap:="-t^2+1728">;
gl2tab["2A0-8a"]:=rec<g0gl2rec|
    label:="2A0-8a", genus:=0, sl2label:="2A0", gl2level:=8, sl2level:=2, index:=2, gl2id:=2259,
    gens:=[[1,2,0,1],[1,1,1,2],[1,0,0,3],[1,1,0,5]],
    msubs:=["2C0-8a","4D0-8a"],
    msups:=["1A0-1a"],
    msupmaps:=["-2*t^2+1728"],
    jlist:=[-25/2,-349938025/8,-121945/32],
    jmap:="-2*t^2+1728">;
gl2tab["2A0-8b"]:=rec<g0gl2rec|
    label:="2A0-8b", genus:=0, sl2label:="2A0", gl2level:=8, sl2level:=2, index:=2, gl2id:=2263,
    gens:=[[1,2,0,1],[1,1,1,2],[1,1,0,3],[1,1,0,5]],
    msubs:=["2C0-8b"],
    msups:=["1A0-1a"],
    msupmaps:=["2*t^2+1728"],
    jlist:=[13239457/32,3625/2,426477625/8],
    jmap:="2*t^2+1728">;
gl2tab["2B0-2a"]:=rec<g0gl2rec|
    label:="2B0-2a", genus:=0, sl2label:="2B0", gl2level:=2, sl2level:=2, index:=3, gl2id:=2,
    gens:=[[0,1,1,0]],
    msubs:=["2C0-2a","2C0-4a","4B0-4b","4B0-4a","4C0-4b","4C0-4a","2C0-8a","2C0-8b","4B0-8a","4B0-8b","4C0-8b","4C0-8a"],
    msups:=["1A0-1a"],
    msupmaps:=["(256-t)^3/t^2"],
    jlist:=[9938375/21952,4956477625/941192,-548347731625/1835008],
    jmap:="(256-t)^3/t^2">;
gl2tab["2C0-2a"]:=rec<g0gl2rec|
    label:="2C0-2a", genus:=0, sl2label:="2C0", gl2level:=2, sl2level:=2, index:=6, gl2id:=0,
    gens:=[],
    msubs:=["4E0-4b","4E0-4c","4E0-8b","4E0-8d"],
    msups:=["2B0-2a","2A0-2a"],
    msupmaps:=["-t^2+64","((t-24)*t*(t+24))/((t^2-64))"],
    jlist:=[111284641/50625,272223782641/164025,13997521/225],
    jmap:="(t^2+192)^3/(t^2-64)^2">;
gl2tab["2C0-4a"]:=rec<g0gl2rec|
    label:="2C0-4a", genus:=0, sl2label:="2C0", gl2level:=4, sl2level:=2, index:=6, gl2id:=51,
    gens:=[[1,2,0,1],[3,0,0,3],[1,0,2,1],[1,1,0,3]],
    msubs:=["4E0-4a","4E0-8e"],
    msups:=["2B0-2a","2A0-4a"],
    msupmaps:=["64*(t^2+1)","(8*t*(t^2+9))/((t^2+1))"],
    jlist:=[21296/25,-20720464/15625,432/169],
    jmap:="64*(3-t^2)^3/(t^2+1)^2">;
gl2tab["2C0-8a"]:=rec<g0gl2rec|
    label:="2C0-8a", genus:=0, sl2label:="2C0", gl2level:=8, sl2level:=2, index:=6, gl2id:=2238,
    gens:=[[1,2,0,1],[3,0,0,3],[1,0,2,1],[1,0,0,3],[0,1,1,0]],
    msubs:=["4E0-8a","4E0-8c"], 
    msups:=["2B0-2a","2A0-8a"],
    msupmaps:=["32*(t^2+2)","(4*t*(t^2+18))/((t^2+2))"],
    jlist:=[9938375/176418,-7357983625/127552392,168105213359/228637728],
    jmap:="32*(6-t^2)^3/(t^2+2)^2">;
gl2tab["2C0-8b"]:=rec<g0gl2rec|
    label:="2C0-8b", genus:=0, sl2label:="2C0", gl2level:=8, sl2level:=2, index:=6, gl2id:=2243,
    gens:=[[1,2,0,1],[3,0,0,3],[1,0,2,1],[1,1,0,3],[1,1,0,5]],
    msubs:=["4E0-8g","4E0-8h","4E0-8f","4E0-8i"],
    msups:=["2B0-2a","2A0-8b"],
    msupmaps:=["-32*(t^2-2)","(4*t*(t^2-18))/((t^2-2))"],
    jlist:=[4956477625/941192,2251439055699625/25088,128787625/98],
    jmap:="32*(t^2+6)^3/(t^2-2)^2">;
gl2tab["4A0-4a"]:=rec<g0gl2rec|
    label:="4A0-4a", genus:=0, sl2label:="4A0", gl2level:=4, sl2level:=4, index:=4, gl2id:=55,
    gens:=[[1,1,1,2],[0,1,3,0],[1,1,0,3]],
    msubs:=["4D0-4a","4F0-4b","4D0-8a","8F0-8a"],
    msups:=["1A0-1a"],
    msupmaps:=["4*t^3*(8-t)"],
    jlist:=[-3072,1024,-138240],
    jmap:="4*t^3*(8-t)">;
gl2tab["4B0-4a"]:=rec<g0gl2rec|
    label:="4B0-4a", genus:=0, sl2label:="4B0", gl2level:=4, sl2level:=4, index:=6, gl2id:=48,
    gens:=[[3,0,0,3],[0,1,3,2],[1,0,0,3]],
    msubs:=["4E0-4b","4E0-8f"],
    msups:=["2B0-2a"],
    msupmaps:=["(256)/((t^2+4))"],
    jlist:=[16384/5,488095744/125,442368/13],
    jmap:="256*(t^2+3)^3/(t^2+4)">;
gl2tab["4B0-4b"]:=rec<g0gl2rec|
    label:="4B0-4b", genus:=0, sl2label:="4B0", gl2level:=4, sl2level:=4, index:=6, gl2id:=46,
    gens:=[[3,0,0,3],[0,1,3,2],[1,2,0,3]],
    msubs:=["4E0-4a","4E0-4c","4E0-8c","4E0-8i","8C0-8d","8C0-8b","8C0-8a","8C0-8c"],
    msups:=["2B0-2a"],
    msupmaps:=["(-4096)/(t^2+16*t)"],
    jlist:=[357911/2160,-273359449/1536000,35578826569/5314410],
    jmap:="(t^2+16*t+16)^3/(t*(t+16))">;
gl2tab["4B0-8a"]:=rec<g0gl2rec|
    label:="4B0-8a", genus:=0, sl2label:="4B0", gl2level:=8, sl2level:=4, index:=6, gl2id:=2235,
    gens:=[[3,0,0,3],[1,4,0,1],[0,3,5,2],[1,0,0,3],[1,2,0,5]],
    msubs:=["4E0-8a","4E0-8h","4E0-8e","4E0-8b"],
    msups:=["2B0-2a"],
    msupmaps:=["(-512)/((t^2-8))"],
    jlist:=[9938375/21952,-548347731625/1835008,-15625/28],
    jmap:="64*(t^2-6)^3/(t^2-8)">;
gl2tab["4B0-8b"]:=rec<g0gl2rec|
    label:="4B0-8b", genus:=0, sl2label:="4B0", gl2level:=8, sl2level:=4, index:=6, gl2id:=2231,
    gens:=[[3,0,0,3],[1,4,0,1],[0,3,5,2],[1,2,0,3],[1,2,0,5]],
    msubs:=["4E0-8g","4E0-8d"],
    msups:=["2B0-2a"],
    msupmaps:=["(512)/((t^2+8))"],
    jlist:=[18609625/1188,57736239625/255552,10091699281/2737152],
    jmap:="64*(t^2+6)^3/(t^2+8)">;
gl2tab["4C0-4a"]:=rec<g0gl2rec|
    label:="4C0-4a", genus:=0, sl2label:="4C0", gl2level:=4, sl2level:=4, index:=6, gl2id:=52,
    gens:=[[1,2,2,1],[0,1,3,0],[1,0,0,3]],
    msubs:=["4E0-4a","4E0-4b","4F0-4a","4F0-4b","4E0-8a","4E0-8g","4F0-8a","4F0-8b","8B0-8a","8B0-8b","8D0-8a","8D0-8c","8D0-8d","8D0-8b"],
    msups:=["2B0-2a"],
    msupmaps:=["t^2"],
    jlist:=[131072/9,5488/81,315978926832/169],
    jmap:="(256-t^2)^3/t^4">;
gl2tab["4C0-4b"]:=rec<g0gl2rec|
    label:="4C0-4b", genus:=0, sl2label:="4C0", gl2level:=4, sl2level:=4, index:=6, gl2id:=50,
    gens:=[[1,2,2,1],[0,1,3,0],[1,2,0,3]],
    msubs:=["4E0-4c","4E0-8h","8B0-8c","8B0-8d"],
    msups:=["2B0-2a"],
    msupmaps:=["-t^2"],
    jlist:=[2000,2048,78608],
    jmap:="(t^2+256)^3/t^4">;
gl2tab["4C0-8a"]:=rec<g0gl2rec|
    label:="4C0-8a", genus:=0, sl2label:="4C0", gl2level:=8, sl2level:=4, index:=6, gl2id:=2244,
    gens:=[[1,4,0,1],[2,1,3,2],[0,3,5,0],[1,0,0,3],[1,2,0,5]],
    msubs:=["4E0-8i","4E0-8b"],
    msups:=["2B0-2a"],
    msupmaps:=["-128*t^2"],
    jlist:=[23328,3456,141420761/9216],
    jmap:="128*(t^2+2)^3/t^4">;
gl2tab["4C0-8b"]:=rec<g0gl2rec|
    label:="4C0-8b", genus:=0, sl2label:="4C0", gl2level:=8, sl2level:=4, index:=6, gl2id:=2240,
    gens:=[[1,4,0,1],[2,1,3,2],[0,3,5,0],[1,2,0,3],[1,2,0,5]],
    msubs:=["4E0-8c","4E0-8f","4E0-8e","4E0-8d"],
    msups:=["2B0-2a"],
    msupmaps:=["128*t^2"],
    jlist:=[-115501303/25600,544737993463/20000,704969/484],
    jmap:="128*(2-t^2)^3/t^4">;
gl2tab["4D0-4a"]:=rec<g0gl2rec|
    label:="4D0-4a", genus:=0, sl2label:="4D0", gl2level:=4, sl2level:=4, index:=8, gl2id:=42,
    gens:=[[2,1,1,3],[1,1,0,3]],
    msubs:=["4G0-4b"],
    msups:=["4A0-4a","2A0-4a"],
    msupmaps:=["(-(t^2+2*t-2))/(t)","(2*(t^2+2)*(t^2+8*t-2))/(t^2)"],
    jlist:=[-35937/4,109503/64,351/4],
    jmap:="-4*(t^2+2*t-2)^3*(t^2+10*t-2)/t^4">;
gl2tab["4D0-8a"]:=rec<g0gl2rec|
    label:="4D0-8a", genus:=0, sl2label:="4D0", gl2level:=8, sl2level:=4, index:=8, gl2id:=2223,
    gens:=[[1,4,0,1],[2,1,5,3],[3,3,0,5],[0,1,3,0]],
    msubs:=["4G0-8a","8E0-16a","8E0-16b"],
    msups:=["4A0-4a","2A0-8a"],
    msupmaps:=["(-2*(t^2+4*t-2))/((t^2-2))","(32*(t-1)*(t+2)*(t^2+2))/((t^2-2)^2)"],
    jlist:=[-320,-72000,-238203200/2401],
    jmap:="-64*(t^2+4*t-2)^3*(5*t^2+4*t-10)/(t^2-2)^4">;
gl2tab["4E0-4a"]:=rec<g0gl2rec|
    label:="4E0-4a", genus:=0, sl2label:="4E0", gl2level:=4, sl2level:=4, index:=12, gl2id:=32,
    gens:=[[3,0,0,3],[1,2,2,1],[0,1,1,0]],
    msubs:=["4G0-4b","4G0-8e","8G0-8f","8G0-8k"],
    msups:=["2C0-4a","4C0-4a","4B0-4b"],
    msupmaps:=["((t^2-1))/(2*t)","(4*(t^2+1))/(t)","(-16*t^2)/((t^2+1))"],
    jlist:=[4733169839/3515625,-35937/83521,24487529386319/183539412225],
    jmap:="-16*(t^4-14*t^2+1)^3/(t^2*(t^2+1)^4)">;
gl2tab["4E0-4b"]:=rec<g0gl2rec|
    label:="4E0-4b", genus:=0, sl2label:="4E0", gl2level:=4, sl2level:=4, index:=12, gl2id:=34,
    gens:=[[3,0,0,3],[1,2,2,1],[1,0,0,3]],
    msubs:=["4G0-4a","4G0-8d","8G0-8d","8G0-8e"],
    msups:=["2C0-2a","4B0-4a","4C0-4a"],
    msupmaps:=["8*(2*t^2+1)","((t^2-1))/(t)","(16*t)/((t^2+1))"],
    jlist:=[20346417/289,148176/25,72043225281/67600],
    jmap:="256*(t^4 + t^2 + 1)^3/(t^4*(t^2+1)^2)">;
gl2tab["4E0-4c"]:=rec<g0gl2rec|
    label:="4E0-4c", genus:=0, sl2label:="4E0", gl2level:=4, sl2level:=4, index:=12, gl2id:=30,
    gens:=[[3,0,0,3],[1,2,2,1],[1,2,0,3]],
    msubs:=["4G0-4a","4G0-8c","8G0-8a","8G0-8b","8J0-8a","8J0-8b","8J0-8c","8J0-8d"],
    msups:=["2C0-2a","4C0-4b","4B0-4b"],
    msupmaps:=["(4*(t^2+1))/(t)","(4*(t^2-1))/(t)","(-16*t^2)/((t^2-1))"],
    jlist:=[13997521/225,272223782641/164025,7189057/3969],
    jmap:="16*(t^4+14*t^2+1)^3/(t^2*(t^2-1)^4)">;
gl2tab["4E0-8a"]:=rec<g0gl2rec|
    label:="4E0-8a", genus:=0, sl2label:="4E0", gl2level:=8, sl2level:=4, index:=12, gl2id:=2189,
    gens:=[[3,0,0,3],[1,4,0,1],[5,0,0,5],[1,2,2,5],[1,0,0,3],[0,1,1,0]],
    msubs:=["4G0-8b","4G0-8a","8G0-8l"],
    msups:=["2C0-8a","4B0-8a","4C0-4a"],
    msupmaps:=["(4*t)/((t^2-2))","(8*t)/((t^2+2))","(8*(t^2+2))/((t^2-2))"],
    jlist:=[170769126592/281132289,27000000/717409,-289067012928/167521249],
    jmap:="64*(t^2-6)^3*(3*t^2-2)^3/((t^2-2)^2*(t^2+2)^4)">;
gl2tab["4E0-8b"]:=rec<g0gl2rec|
    label:="4E0-8b", genus:=0, sl2label:="4E0", gl2level:=8, sl2level:=4, index:=12, gl2id:=2190,
    gens:=[[3,0,0,3],[1,4,0,1],[5,0,0,5],[1,2,2,5],[1,0,0,3],[1,2,0,5]],
    msubs:=["4G0-8c","4G0-8d"],
    msups:=["2C0-2a","4B0-8a","4C0-8a"],
    msupmaps:=["8*(t^2-1)","((t^2+2))/(t)","(2*t)/((t^2-2))"],
    jlist:=[611960049/122500,545338513/171396,740772/49],
    jmap:="64*(t^4-2*t^2+4)^3/(t^4*(t^2-2)^2)">;
gl2tab["4E0-8c"]:=rec<g0gl2rec|
    label:="4E0-8c", genus:=0, sl2label:="4E0", gl2level:=8, sl2level:=4, index:=12, gl2id:=2163,
    gens:=[[3,0,0,3],[1,4,0,1],[5,0,0,5],[1,2,2,5],[1,2,0,3],[0,1,1,0]],
    msubs:=["8G0-8c"],
    msups:=["2C0-8a","4C0-8b","4B0-4b"],
    msupmaps:=["((t^2-2))/(2*t)","((t^2+2))/(4*t)","(-16*t^2)/((t^2+2))"],
    jlist:=[-192100033/2371842,-16576888679672833/2216253521952,25076571983/50863698],
    jmap:="-8*(t^4-28*t^2+4)^3/(t^2*(t^2+2)^4)">;
gl2tab["4E0-8d"]:=rec<g0gl2rec|
    label:="4E0-8d", genus:=0, sl2label:="4E0", gl2level:=8, sl2level:=4, index:=12, gl2id:=2161,
    gens:=[[3,0,0,3],[1,4,0,1],[5,0,0,5],[1,2,2,5],[1,2,0,3],[1,2,0,5]],
    msubs:=["4G0-8c"],
    msups:=["2C0-2a","4B0-8b","4C0-8b"],
    msupmaps:=["8*(t^2+1)","((t^2-2))/(t)","(2*t)/((t^2+2))"],
    jlist:=[1180932193/4356,18120364883707393/269485056,2703045457/544644],
    jmap:="64*(t^4+2*t^2+4)^3/(t^4*(t^2+2)^2)">;
gl2tab["4E0-8e"]:=rec<g0gl2rec|
    label:="4E0-8e", genus:=0, sl2label:="4E0", gl2level:=8, sl2level:=4, index:=12, gl2id:=2193,
    gens:=[[3,0,0,3],[1,4,0,1],[5,0,0,5],[1,2,2,5],[1,2,0,5],[0,1,1,0]],
    msubs:=["8G0-16a"],
    msups:=["4C0-8b","4B0-8a","2C0-4a"],
    msupmaps:=["((t^2+1))/((t^2-2*t-1))","(2*(t^2+2*t-1))/((t^2+1))","((t^2+2*t-1))/((t^2-2*t-1))"],
    jlist:=[128,-1557376/625,49794176/30625],
    jmap:="128*(t^4-8*t^3+2*t^2+8*t+1)^3/((t^2-2*t-1)^2*(t^2+1)^4)">;
gl2tab["4E0-8f"]:=rec<g0gl2rec|
    label:="4E0-8f", genus:=0, sl2label:="4E0", gl2level:=8, sl2level:=4, index:=12, gl2id:=2187,
    gens:=[[3,0,0,3],[1,4,0,1],[5,0,0,5],[1,2,2,5],[3,0,0,5],[0,1,3,2]],
    msubs:=["4G0-16a"],
    msups:=["2C0-8b","4C0-8b","4B0-4a"],
    msupmaps:=["((t^2+2*t-1))/((t^2+1))","((t^2-2*t-1))/(2*(t^2+1))","(2*(t^2+2*t-1))/((t^2-2*t-1))"],
    jlist:=[10976,252179168/25,110174432/60025],
    jmap:="32*(7*t^4+4*t^3+14*t^2-4*t+7)^3/((t^2-2*t-1)^4*(t^2+1)^2)">;
gl2tab["4E0-8g"]:=rec<g0gl2rec|
    label:="4E0-8g", genus:=0, sl2label:="4E0", gl2level:=8, sl2level:=4, index:=12, gl2id:=2172,
    gens:=[[3,0,0,3],[1,4,0,1],[5,0,0,5],[1,2,2,5],[3,0,0,5],[2,1,1,2]],
    msubs:=["4G0-8f","8G0-8h","8G0-8i"],
    msups:=["2C0-8b","4B0-8b","4C0-4a"],
    msupmaps:=["(4*t)/((t^2+2))","(8*t)/((t^2-2))","(8*(t^2-2))/((t^2+2))"],
    jlist:=[870436774592/204004089,5268024000/290521,25381079739072/4439449],
    jmap:="64*(t^2+6)^3*(3*t^2+2)^3/((t^2+2)^2*(t^2-2)^4)">;
gl2tab["4E0-8h"]:=rec<g0gl2rec|
    label:="4E0-8h", genus:=0, sl2label:="4E0", gl2level:=8, sl2level:=4, index:=12, gl2id:=2194,
    gens:=[[3,0,0,3],[1,4,0,1],[5,0,0,5],[1,2,2,5],[3,2,0,5],[0,1,3,0]],
    msubs:=[],
    msups:=["2C0-8b","4B0-8a","4C0-4b"],
    msupmaps:=["(2*(t^2+1))/((t^2+2*t-1))","(4*(t^2+1))/((t^2-2*t-1))","(8*(t^2-2*t-1))/((t^2+2*t-1))"],
    jlist:=[9528128/2401,489303872/49,306182024000/2825761],
    jmap:="64*(5*t^4+12*t^3+10*t^2-12*t+5)^3/((t^2-2*t-1)^4*(t^2+2*t-1)^2)">;
gl2tab["4E0-8i"]:=rec<g0gl2rec|
    label:="4E0-8i", genus:=0, sl2label:="4E0", gl2level:=8, sl2level:=4, index:=12, gl2id:=2174,
    gens:=[[3,0,0,3],[1,4,0,1],[5,0,0,5],[1,2,2,5],[3,2,0,5],[2,1,1,2]],
    msubs:=["8G0-8g","8G0-8j"],
    msups:=["2C0-8b","4C0-8a","4B0-4b"],
    msupmaps:=["((t^2+2))/(2*t)","((t^2-2))/(4*t)","(-16*t^2)/((t^2-2))"],
    jlist:=[2121328796049/120050,135559106353/5037138,11090466/2401],
    jmap:="8*(t^4+28*t^2+4)^3/(t^2*(t^2-2)^4)">;
gl2tab["4F0-4a"]:=rec<g0gl2rec|
    label:="4F0-4a", genus:=0, sl2label:="4F0", gl2level:=4, sl2level:=4, index:=12, gl2id:=38,
    gens:=[[0,1,3,0],[1,0,0,3]],
    msubs:=["4G0-4a","4G0-4b","4G0-8b","4G0-8f","8H0-8a","8H0-8e","8H0-8g","8H0-8c"],
    msups:=["4C0-4a"],
    msupmaps:=["8*(t^2-1)"],
    jlist:=[4913/1296,838561807/26244,-8000/81],
    jmap:="-64*(t^2+1)^3*(t^2-3)^3/(t^2-1)^4">;
gl2tab["4F0-4b"]:=rec<g0gl2rec|
    label:="4F0-4b", genus:=0, sl2label:="4F0", gl2level:=4, sl2level:=4, index:=12, gl2id:=40,
    gens:=[[0,1,3,0],[2,1,1,2]],
    msubs:=["4G0-4b","4G0-8a","8H0-8d","8H0-8h"],
    msups:=["4C0-4a","4A0-4a"],
    msupmaps:=["8*(t^2+1)","(-2*(t-1)*(t^2+3))/((t^2+1))"],
    jlist:=[-1213857792/28561,-3538944/625,-1481544000/83521],
    jmap:="-64*(t^2-1)^3*(t^2+3)^3/(t^2+1)^4">;
gl2tab["4F0-8a"]:=rec<g0gl2rec|
    label:="4F0-8a", genus:=0, sl2label:="4F0", gl2level:=8, sl2level:=4, index:=12, gl2id:=2203,
    gens:=[[3,0,0,3],[1,4,0,1],[0,3,5,0],[1,0,0,3],[1,2,2,1]],
    msubs:=["4G0-8b","4G0-8e","8H0-8b","8H0-8f"],
    msups:=["4C0-4a"],
    msupmaps:=["4*(t^2+2)"],
    jlist:=[5488/81,-18522000/14641,-5799473552/531441],
    jmap:="16*(2-t^2)^3*(t^2+6)^3/(t^2+2)^4">;
gl2tab["4F0-8b"]:=rec<g0gl2rec|
    label:="4F0-8b", genus:=0, sl2label:="4F0", gl2level:=8, sl2level:=4, index:=12, gl2id:=2212,
    gens:=[[3,0,0,3],[1,4,0,1],[0,3,5,0],[3,0,0,5],[1,2,2,1]],
    msubs:=["4G0-8a","4G0-8d","4G0-8e","4G0-8f","8H0-8i","8H0-8k","8H0-8j","8H0-8l","8K0-16a","8K0-16b","8K0-16c","8K0-16d"],
    msups:=["4C0-4a"],
    msupmaps:=["4*(t^2-2)"],
    jlist:=[-574992/2401,8869743/2401,-5832000/2401],
    jmap:="16*(t^2+2)^3*(6-t^2)^3/(t^2-2)^4">;
gl2tab["4G0-16a"]:=rec<g0gl2rec|
    label:="4G0-16a", genus:=0, sl2label:="4G0", gl2level:=16, sl2level:=4, index:=24, gl2id:=27700,
    gens:=[[1,4,0,1],[7,0,0,7],[3,0,0,11],[1,0,4,1],[1,1,0,5],[1,5,2,5]],
    msubs:=["8N0-32a"],
    msups:=["4E0-8f"],
    msupmaps:=["(1-t^2)/(2*t)"],
    jlist:=[10976,3345717677792/52200625,381710814819113696/28561],
    jmap:="32*(7*t^8-8*t^7+28*t^6+56*t^5+42*t^4-56*t^3+28*t^2+8*t+7)^3/((t^2+1)^4*(t^4+4*t^3-6*t^2-4*t+1)^4)">;
gl2tab["4G0-4a"]:=rec<g0gl2rec|
    label:="4G0-4a", genus:=0, sl2label:="4G0", gl2level:=4, sl2level:=4, index:=24, gl2id:=15,
    gens:=[[3,0,0,3],[1,0,0,3]],
    msubs:=["8N0-8c","8N0-8a","8N0-8f"],
    msups:=["4E0-4c","4E0-4b","4F0-4a"],
    msupmaps:=["1/4*t^2","((t^2-4))/(4*t)","((t^2+4*t-4))/((t^2+4))"],
    jlist:=[111284641/50625,15551989015681/1445900625,47595748626367201/1215506250000],
    jmap:="(t^8+224*t^4+256)^3/(t^4*(t^4-16)^4)">;
gl2tab["4G0-4b"]:=rec<g0gl2rec|
    label:="4G0-4b", genus:=0, sl2label:="4G0", gl2level:=4, sl2level:=4, index:=24, gl2id:=18,
    gens:=[[3,0,0,3],[1,3,0,3]],
    msubs:=[],
    msups:=["4E0-4a","4F0-4a","4F0-4b","4D0-4a"],
    msupmaps:=["t^2/2","((t^2+2))/(2*t)","((t^2-2))/(2*t)","(-t*(t^2+2*t+2))/((t^2-2*t+2))"],
    jlist:=[237276/625,-32798729601/71402500,-1106280483969259521/70644025000000],
    jmap:="-4*(t^8-56*t^4+16)^3/(t^4*(t^4+4)^4)">;
gl2tab["4G0-8a"]:=rec<g0gl2rec|
    label:="4G0-8a", genus:=0, sl2label:="4G0", gl2level:=8, sl2level:=4, index:=24, gl2id:=2085,
    gens:=[[3,0,0,3],[1,4,0,1],[5,0,0,5],[1,0,4,1],[0,1,3,0],[2,1,5,2]],
    msubs:=["8N0-16d","8N0-16a"],
    msups:=["4F0-4b","4E0-8a","4F0-8b","4D0-8a"],
    msupmaps:=["(4*t)/((t^2-2))","((t^2+2))/(2*t)","(2*(t^2+2))/((t^2-2))","(-2*(t^3-t^2+2*t+2))/((t^3-2*t^2-2*t-4))"],
    jlist:=[-1481544000/83521,-2361669926013000000/110841719041,-2029089096000/391476713761],
    jmap:="64*(t^4-20*t^2+4)^3*(3*t^4+4*t^2+12)^3/((t^2-2)^4*(t^4+12*t^2+4)^4)">;
gl2tab["4G0-8b"]:=rec<g0gl2rec|
    label:="4G0-8b", genus:=0, sl2label:="4G0", gl2level:=8, sl2level:=4, index:=24, gl2id:=2016,
    gens:=[[3,0,0,3],[1,4,0,1],[5,0,0,5],[1,0,4,1],[1,0,0,3],[0,1,1,0]],
    msubs:=[],
    msups:=["4F0-4a","4F0-8a","4E0-8a"],
    msupmaps:=["(2*(t^2+2*t+2))/((t^2-2))","(2*(t^2+4*t+2))/((t^2-2))","(2*(t^2+2*t+2))/((t^2+4*t+2))"],
    jlist:=[-8000/81,-60180985892672/96059601,21980236097728/16243247601],
    jmap:="-64*(t^4+16*t^3+44*t^2+32*t+4)^3*(5*t^4+16*t^3+28*t^2+32*t+20)^3/((t^2-2)^4*(t^2+4*t+6)^4*(3*t^2+4*t+2)^4)">;
gl2tab["4G0-8c"]:=rec<g0gl2rec|
    label:="4G0-8c", genus:=0, sl2label:="4G0", gl2level:=8, sl2level:=4, index:=24, gl2id:=2019,
    gens:=[[3,0,0,3],[1,4,0,1],[5,0,0,5],[1,0,4,1],[1,0,0,3],[1,2,0,5]],
    msubs:=["8N0-8b","8N0-8d","8N0-8e"],
    msups:=["4E0-4c","4E0-8b","4E0-8d"],
    msupmaps:=["t^2/2","((t^2+2))/(2*t)","((t^2-2))/(2*t)"],
    jlist:=[5489767279588/2847396321,1200862149227882497/70094268661824,1124604760397601117601/1013798336040000],
    jmap:="4*(t^8+56*t^4+16)^3/(t^4*(t^4-4)^4)">;
gl2tab["4G0-8d"]:=rec<g0gl2rec|
    label:="4G0-8d", genus:=0, sl2label:="4G0", gl2level:=8, sl2level:=4, index:=24, gl2id:=2095,
    gens:=[[3,0,0,3],[1,4,0,1],[5,0,0,5],[1,0,4,1],[1,2,0,5],[3,0,2,5]],
    msubs:=["8N0-16e"],
    msups:=["4F0-8b","4E0-8b","4E0-4b"],
    msupmaps:=["(2*(t^2-1))/((t^2+1))","(2*(t^2+1))/((t^2-2*t-1))","((t^2+2*t-1))/((t^2-2*t-1))"],
    jlist:=[942344950464/1500625,64159492305394368/5727449317681,1872929603205551808/56117612986561],
    jmap:="64*(t^4+10*t^2+1)^3*(3*t^4-2*t^2+3)^3/((t^2+1)^4*(t^4-6*t^2+1)^4)">;
gl2tab["4G0-8e"]:=rec<g0gl2rec|
    label:="4G0-8e", genus:=0, sl2label:="4G0", gl2level:=8, sl2level:=4, index:=24, gl2id:=2048,
    gens:=[[3,0,0,3],[1,4,0,1],[5,0,0,5],[1,0,4,1],[1,3,0,3],[1,2,0,5]],
    msubs:=["8N0-16b","8N0-16c"],
    msups:=["4E0-4a","4F0-8a","4F0-8b"],
    msupmaps:=["t^2","((t^2-1))/(t)","((t^2+1))/(t)"],
    jlist:=[-35937/83521,1453264622783/7170871761,-237786406770177/69799526416],
    jmap:="-16*(t^8-14*t^4+1)^3/(t^4*(t^4+1)^4)">;
gl2tab["4G0-8f"]:=rec<g0gl2rec|
    label:="4G0-8f", genus:=0, sl2label:="4G0", gl2level:=8, sl2level:=4, index:=24, gl2id:=2049,
    gens:=[[3,0,0,3],[1,4,0,1],[5,0,0,5],[1,0,4,1],[1,3,0,3],[1,3,2,3]],
    msubs:=["8N0-16f"],
    msups:=["4F0-4a","4E0-8g","4F0-8b"],
    msupmaps:=["(4*t)/((t^2+2))","((t^2-2))/(2*t)","(2*(t^2-2))/((t^2+2))"],
    jlist:=[1331000000/194481,1119033462968000/547981281,12509787724344000/4097152081],
    jmap:="64*(t^4+20*t^2+4)^3*(3*t^4-4*t^2+12)^3/((t^2+2)^4*(t^4-12*t^2+4)^4)">;
gl2tab["8B0-8a"]:=rec<g0gl2rec|
    label:="8B0-8a", genus:=0, sl2label:="8B0", gl2level:=8, sl2level:=8, index:=12, gl2id:=2211,
    gens:=[[3,0,0,3],[0,3,5,0],[1,2,2,5],[1,0,0,3],[1,0,0,5]],
    msubs:=["8H0-8a","8H0-8e","8H0-8d","8H0-8f","8H0-8i","8H0-8k","16B0-16c","16B0-16a"],
    msups:=["4C0-4a"],
    msupmaps:=["16*t^2"],
    jlist:=[131072000/81,-4394000/6561,62200479744/625],
    jmap:="256*(1-t^4)^3/t^8">;
gl2tab["8B0-8b"]:=rec<g0gl2rec|
    label:="8B0-8b", genus:=0, sl2label:="8B0", gl2level:=8, sl2level:=8, index:=12, gl2id:=2213,
    gens:=[[3,0,0,3],[0,3,5,0],[1,2,2,5],[1,0,0,3],[1,4,0,5]],
    msubs:=["8H0-8g","8H0-8c","8H0-8h","8H0-8b","8H0-8j","8H0-8l"],
    msups:=["4C0-4a"],
    msupmaps:=["32*t^2"],
    jlist:=[-432,1000188,7304528/81],
    jmap:="256*(1-4*t^4)^3/(16*t^8)">;
gl2tab["8B0-8c"]:=rec<g0gl2rec|
    label:="8B0-8c", genus:=0, sl2label:="8B0", gl2level:=8, sl2level:=8, index:=12, gl2id:=2201,
    gens:=[[3,0,0,3],[0,3,5,0],[1,2,2,5],[3,2,0,1],[1,0,0,5]],
    msubs:=[],
    msups:=["4C0-4b"],
    msupmaps:=["32*t^2"],
    jlist:=[2000,1098500,274625/16],
    jmap:="256*(4*t^4+1)^3/(16*t^8)">;
gl2tab["8B0-8d"]:=rec<g0gl2rec|
    label:="8B0-8d", genus:=0, sl2label:="8B0", gl2level:=8, sl2level:=8, index:=12, gl2id:=2204,
    gens:=[[3,0,0,3],[0,3,5,0],[1,2,2,5],[3,2,0,1],[1,4,0,5]],
    msubs:=["8L0-8b","8L0-8a","16B0-16d","16B0-16b"],
    msups:=["4C0-4b"],
    msupmaps:=["16*t^2"],
    jlist:=[4913,16974593,141150208/81],
    jmap:="256*(t^4+1)^3/t^8">;
gl2tab["8C0-8a"]:=rec<g0gl2rec|
    label:="8C0-8a", genus:=0, sl2label:="8C0", gl2level:=8, sl2level:=8, index:=12, gl2id:=2148,
    gens:=[[3,0,0,3],[5,0,0,5],[0,3,5,2],[1,2,0,3],[1,0,0,5]],
    msubs:=["8G0-8b","8G0-8c","8G0-8k","8G0-8j"],
    msups:=["4B0-4b"],
    msupmaps:=["-8*t^2"],
    jlist:=[1367631/2800,74565301329/5468750,2924207/3312],
    jmap:="64*(4*t^4-8*t^2+1)^3/(t^2*(t^2-2))">;
gl2tab["8C0-8b"]:=rec<g0gl2rec|
    label:="8C0-8b", genus:=0, sl2label:="8C0", gl2level:=8, sl2level:=8, index:=12, gl2id:=2154,
    gens:=[[3,0,0,3],[5,0,0,5],[0,3,5,2],[1,2,0,3],[1,4,0,5]],
    msubs:=["8G0-8a","8G0-8j","16C0-16b","16C0-16a"],
    msups:=["4B0-4b"],
    msupmaps:=["-4*(t^2+4)"],
    jlist:=[35937/17,82483294977/17,55296/5],
    jmap:="256*(t^4+4*t^2+1)^3/(t^2*(t^2+4))">;
gl2tab["8C0-8c"]:=rec<g0gl2rec|
    label:="8C0-8c", genus:=0, sl2label:="8C0", gl2level:=8, sl2level:=8, index:=12, gl2id:=2140,
    gens:=[[3,0,0,3],[5,0,0,5],[0,3,5,2],[3,2,0,1],[1,0,0,5]],
    msubs:=["8G0-8b","8G0-8g"],
    msups:=["4B0-4b"],
    msupmaps:=["-8*(t^2+2)"],
    jlist:=[912673/528,4824238966273/66,4824238966273/537919488],
    jmap:="64*(4*t^4+8*t^2+1)^3/(t^2*(t^2+2))">;
gl2tab["8C0-8d"]:=rec<g0gl2rec|
    label:="8C0-8d", genus:=0, sl2label:="8C0", gl2level:=8, sl2level:=8, index:=12, gl2id:=2142,
    gens:=[[3,0,0,3],[5,0,0,5],[0,3,5,2],[3,2,0,1],[1,4,0,5]],
    msubs:=["8G0-8a","8G0-8c","8G0-8f","8G0-8g","8I0-8c","8I0-8d","8I0-8b","8I0-8a","16C0-16d","16C0-16c","16D0-16a","16D0-16b","16D0-16c","16D0-16d"],
    msups:=["4B0-4b"],
    msupmaps:=["-t^2"],
    jlist:=[103823/63,53297461115137/147,147281603041/5265],
    jmap:="(t^4-16*t^2+16)^3/(t^2*(t^2-16))">;
gl2tab["8D0-8a"]:=rec<g0gl2rec|
    label:="8D0-8a", genus:=0, sl2label:="8D0", gl2level:=8, sl2level:=8, index:=12, gl2id:=2181,
    gens:=[[2,1,3,2],[0,3,5,0],[1,0,0,3],[1,0,0,5]],
    msubs:=["8G0-8e","8G0-8k","8G0-8l","8G0-8i","8H0-8a","8H0-8d","8H0-8b","8H0-8j","16E0-16c","16E0-16a","16E0-16b","16E0-16d"],
    msups:=["4C0-4a"],
    msupmaps:=["(16)/((t^2-2))"],
    jlist:=[28311552/49,35937/49,474552000/49],
    jmap:="256*(t^2-1)^3*(t^2-3)^3/(t^2-2)^2">;
gl2tab["8D0-8b"]:=rec<g0gl2rec|
    label:="8D0-8b", genus:=0, sl2label:="8D0", gl2level:=8, sl2level:=8, index:=12, gl2id:=2195,
    gens:=[[2,1,3,2],[0,3,5,0],[1,0,0,3],[1,4,0,5]],
    msubs:=["8G0-8d","8G0-8i","8H0-8c","8H0-8k"],
    msups:=["4C0-4a"],
    msupmaps:=["(32)/((t^2+4))"],
    jlist:=[315978926832/169,1016339184/25,2304352392765750000/32761],
    jmap:="16*(t^2+6)^3*(t^2+2)^3/(t^2+4)^2">;
gl2tab["8D0-8c"]:=rec<g0gl2rec|
    label:="8D0-8c", genus:=0, sl2label:="8D0", gl2level:=8, sl2level:=8, index:=12, gl2id:=2170,
    gens:=[[2,1,3,2],[0,3,5,0],[1,4,0,3],[1,0,0,5]],
    msubs:=["8G0-8e","8G0-8h","8H0-8e","8H0-8l"],
    msups:=["4C0-4a"],
    msupmaps:=["(16)/((t^2+2))"],
    jlist:=[131072/9,442368000/121,98772058112/729],
    jmap:="256*(t^2+1)^3*(t^2+3)^3/(t^2+2)^2">;
gl2tab["8D0-8d"]:=rec<g0gl2rec|
    label:="8D0-8d", genus:=0, sl2label:="8D0", gl2level:=8, sl2level:=8, index:=12, gl2id:=2176,
    gens:=[[2,1,3,2],[0,3,5,0],[1,4,0,3],[1,4,0,5]],
    msubs:=["8G0-8d","8G0-8f","8G0-8l","8G0-8h","8H0-8g","8H0-8h","8H0-8f","8H0-8i"],
    msups:=["4C0-4a"],
    msupmaps:=["(32)/((t^2-4))"],
    jlist:=[2000/9,12214672127/9,14553591673375/5208653241],
    jmap:="16*(t^2-6)^3*(t^2-2)^3/(t^2-4)^2">;
gl2tab["8E0-16a"]:=rec<g0gl2rec|
    label:="8E0-16a", genus:=0, sl2label:="8E0", gl2level:=16, sl2level:=8, index:=16, gl2id:=27761,
    gens:=[[3,4,0,11],[2,3,3,5],[3,3,0,5],[0,1,3,0]],
    msubs:=[],
    msups:=["4D0-8a"],
    msupmaps:=["(-4*t)/((t^2+2))"],
    jlist:=[-320,-14795072,-29000000],
    jmap:="-64*(t^4+8*t^3-4*t^2+16*t+4)^3*(5*t^4+8*t^3-20*t^2+16*t+20)/(t^2-2)^8">;
gl2tab["8E0-16b"]:=rec<g0gl2rec|
    label:="8E0-16b", genus:=0, sl2label:="8E0", gl2level:=16, sl2level:=8, index:=16, gl2id:=27760,
    gens:=[[3,4,0,11],[2,3,3,5],[3,3,0,5],[0,3,1,0]],
    msubs:=["16F0-32a","16F0-32b"],
    msups:=["4D0-8a"],
    msupmaps:=["(-2*(t^2-2*t+2))/((t^2-4*t+2))"],
    jlist:=[-72000,-26013890880,-23203748160],
    jmap:="64*(3*t^4-24*t^3+52*t^2-48*t+12)^3*(t^4+24*t^3-68*t^2+48*t+4)/(t^2-2)^8">;
gl2tab["8F0-8a"]:=rec<g0gl2rec|
    label:="8F0-8a", genus:=0, sl2label:="8F0", gl2level:=8, sl2level:=8, index:=16, gl2id:=2139,
    gens:=[[1,1,1,2],[0,3,5,0],[3,3,0,5],[2,1,1,3]],
    msubs:=[],
    msups:=["4A0-4a"],
    msupmaps:=["8*(t^4-4*t^2-8*t-4)/(t^2-2)^2"],
    jlist:=[2575826944/5764801,-900700178095964160/806460091894081,-2672676864000/78310985281],
    jmap:="131072*(t+1)*(t^4-4*t^2-8*t-4)^3/(t^2-2)^8">;
gl2tab["8G0-16a"]:=rec<g0gl2rec|
    label:="8G0-16a", genus:=0, sl2label:="8G0", gl2level:=16, sl2level:=8, index:=24, gl2id:=27559,
    gens:=[[1,2,0,1],[7,0,0,7],[3,0,0,11],[1,0,8,1],[3,1,0,5],[1,2,2,1]],
    msubs:=["16G0-32a"],
    msups:=["4E0-8e"],
    msupmaps:=["(1-t^2)/(2*t)"],
    jlist:=[128,-13289344/112890625,-2981528458352512/815730721],
    jmap:="128*(t^8+16*t^7+4*t^6-112*t^5+6*t^4+112*t^3+4*t^2-16*t+1)^3/((t^2+1)^8*(t^4+4*t^3-6*t^2-4*t+1)^2)">;
gl2tab["8G0-8a"]:=rec<g0gl2rec|
    label:="8G0-8a", genus:=0, sl2label:="8G0", gl2level:=8, sl2level:=8, index:=24, gl2id:=1916,
    gens:=[[1,2,0,1],[3,0,0,3],[5,0,0,5],[1,0,0,3],[1,0,0,5]],
    msubs:=["8O0-8b","8O0-8c","8O0-8d","8O0-8e","16G0-16b","16G0-16c"],
    msups:=["8C0-8b","8C0-8d","4E0-4c"],
    msupmaps:=["((t^2-1))/(t)","(2*(t^2+1))/(t)","((t^2+1))/((t^2-1))"],
    jlist:=[168288035761/27720225,13997521/225,59319456301170001/594140625],
    jmap:="256*(t^8-t^4+1)^3/(t^8*(t^4-1)^2)">;
gl2tab["8G0-8b"]:=rec<g0gl2rec|
    label:="8G0-8b", genus:=0, sl2label:="8G0", gl2level:=8, sl2level:=8, index:=24, gl2id:=1912,
    gens:=[[1,2,0,1],[3,0,0,3],[5,0,0,5],[1,0,0,3],[1,0,4,5]],
    msubs:=["8O0-8a","8O0-8j","8O0-8i"],
    msups:=["8C0-8a","8C0-8c","4E0-4c"],
    msupmaps:=["((t^2+2))/(2*t)","((t^2-2))/(2*t)","((t^2+2))/((t^2-2))"],
    jlist:=[3911877700432/38900169,1149550394446181377/4286582784,233998562593882127242951777/126831562802663217168384],
    jmap:="16*(t^8-4*t^4+16)^3/(t^8*(t^4-4)^2)">;
gl2tab["8G0-8c"]:=rec<g0gl2rec|
    label:="8G0-8c", genus:=0, sl2label:="8G0", gl2level:=8, sl2level:=8, index:=24, gl2id:=1915,
    gens:=[[1,2,0,1],[3,0,0,3],[5,0,0,5],[1,0,0,3],[1,1,0,5]],
    msubs:=["8O0-8k","8O0-8l","16G0-16d"],
    msups:=["4E0-8c","8C0-8a","8C0-8d"],
    msupmaps:=["((t^2-2))/(2*t)","(4*t)/((t^2+2))","(4*(t^2-2))/((t^2+2))"],
    jlist:=[6359387729183/4218578658,-2770540998624539614657/209924951154647363208,146142660369886/94532266521],
    jmap:="-2*(t^8-120*t^6+536*t^4-480*t^2+16)^3/(t^2*(t^2+2)^8*(t^2-2)^2)">;
gl2tab["8G0-8d"]:=rec<g0gl2rec|
    label:="8G0-8d", genus:=0, sl2label:="8G0", gl2level:=8, sl2level:=8, index:=24, gl2id:=1972,
    gens:=[[1,2,0,1],[3,0,0,3],[5,0,0,5],[1,0,0,5],[3,0,2,1]],
    msubs:=[],
    msups:=["4E0-4b","8D0-8d","8D0-8b"],
    msupmaps:=["t^2/2","((t^2+2))/(t)","((t^2-2))/(t)"],
    jlist:=[148176/25,72043225281/67600,1156305808919628801/4303360000],
    jmap:="16*(t^8+4*t^4+16)^3/(t^8*(t^4+4)^2)">;
gl2tab["8G0-8e"]:=rec<g0gl2rec|
    label:="8G0-8e", genus:=0, sl2label:="8G0", gl2level:=8, sl2level:=8, index:=24, gl2id:=1958,
    gens:=[[1,2,0,1],[3,0,0,3],[5,0,0,5],[1,0,2,3],[3,2,2,1]],
    msubs:=["16G0-16h","16G0-16j"],
    msups:=["4E0-4b","8D0-8a","8D0-8c"],
    msupmaps:=["t^2","((t^2+1))/(t)","((t^2-1))/(t)"],
    jlist:=[20346417/289,534003898897/61732449,284799399232257/16908544],
    jmap:="256*(t^8+t^4+1)^3/(t^8*(t^4+1)^2)">;
gl2tab["8G0-8f"]:=rec<g0gl2rec|
    label:="8G0-8f", genus:=0, sl2label:="8G0", gl2level:=8, sl2level:=8, index:=24, gl2id:=1942,
    gens:=[[1,2,0,1],[3,0,0,3],[5,0,0,5],[1,1,0,3],[1,0,0,5]],
    msubs:=["8O0-8f","8O0-8g","16G0-16g"],
    msups:=["4E0-4a","8C0-8d","8D0-8d"],
    msupmaps:=["((t^2-1))/(2*t)","(4*(t^2-1))/((t^2+1))","(2*(t^2+2*t-1))/((t^2+1))"],
    jlist:=[226523624554079/269165039062500,24487529386319/183539412225,5821298902603944481896719/98727285861968994140625],
    jmap:="-4*(t^8-60*t^6+134*t^4-60*t^2+1)^3/(t^2*(t^2-1)^2*(t^2+1)^8)">;
gl2tab["8G0-8g"]:=rec<g0gl2rec|
    label:="8G0-8g", genus:=0, sl2label:="8G0", gl2level:=8, sl2level:=8, index:=24, gl2id:=1941,
    gens:=[[1,2,0,1],[3,0,0,3],[5,0,0,5],[1,1,0,3],[1,1,4,1]],
    msubs:=["8O0-8h","16G0-16e","16G0-16f"],
    msups:=["4E0-8i","8C0-8c","8C0-8d"],
    msupmaps:=["((t^2+2))/(2*t)","(4*t)/((t^2-2))","(4*(t^2+2))/((t^2-2))"],
    jlist:=[2361739090258884097/5202,3065617154/9,5701568801608514/6277868289],
    jmap:="2*(t^8+120*t^6+536*t^4+480*t^2+16)^3/(t^2*(t^2-2)^8*(t^2+2)^2)">;
gl2tab["8G0-8h"]:=rec<g0gl2rec|
    label:="8G0-8h", genus:=0, sl2label:="8G0", gl2level:=8, sl2level:=8, index:=24, gl2id:=1939,
    gens:=[[1,2,0,1],[3,0,0,3],[5,0,0,5],[1,1,0,3],[3,2,2,1]],
    msubs:=[],
    msups:=["4E0-8g","8D0-8d","8D0-8c"],
    msupmaps:=["(2*(t^2+1))/((t^2+2*t-1))","(4*(t^2+1))/((t^2-2*t-1))","(2*(t^2+2*t-1))/((t^2-2*t-1))"],
    jlist:=[2744000/9,3856007604379328/9801,7526747342742147512000/7064469620649],
    jmap:="64*(5*t^4+12*t^3+10*t^2-12*t+5)^3*(7*t^4+4*t^3+14*t^2-4*t+7)^3/((t^2-2*t-1)^8*(3*t^4+4*t^3+6*t^2-4*t+3)^2)">;
gl2tab["8G0-8i"]:=rec<g0gl2rec|
    label:="8G0-8i", genus:=0, sl2label:="8G0", gl2level:=8, sl2level:=8, index:=24, gl2id:=1975,
    gens:=[[1,2,0,1],[3,0,0,3],[5,0,0,5],[1,3,2,3],[3,2,2,1]],
    msubs:=["16G0-16i","16G0-16a"],
    msups:=["4E0-8g","8D0-8b","8D0-8a"],
    msupmaps:=["((t^2+2))/(2*t)","(8*t)/((t^2-2))","(2*(t^2+2))/((t^2-2))"],
    jlist:=[98611128000/289,151151982786044856000/332929,7380705123000000/73610743969],
    jmap:="64*(t^2+6)^3*(3*t^2+2)^3*(t^4+28*t^2+4)^3/((t^2-2)^8*(t^4+12*t^2+4)^2)">;
gl2tab["8G0-8j"]:=rec<g0gl2rec|
    label:="8G0-8j", genus:=0, sl2label:="8G0", gl2level:=8, sl2level:=8, index:=24, gl2id:=1980,
    gens:=[[1,2,0,1],[3,0,0,3],[5,0,0,5],[3,0,0,5],[1,1,4,1]],
    msubs:=["8O0-16a"],
    msups:=["4E0-8i","8C0-8a","8C0-8b"],
    msupmaps:=["(2*(t^2+1))/((t^2-2*t-1))","(2*(t^2+1))/((t^2+2*t-1))","(2*(t^2-2*t-1))/((t^2+2*t-1))"],
    jlist:=[287496,262389836808/144120025,481927184300808/1225],
    jmap:="8*(3*t^4-12*t^3+14*t^2-4*t+11)^3*(11*t^4+4*t^3+14*t^2+12*t+3)^3/((t^2-2*t-1)^2*(t^2+1)^2*(t^2+2*t-1)^8)">;
gl2tab["8G0-8k"]:=rec<g0gl2rec|
    label:="8G0-8k", genus:=0, sl2label:="8G0", gl2level:=8, sl2level:=8, index:=24, gl2id:=1960,
    gens:=[[1,2,0,1],[3,0,0,3],[5,0,0,5],[3,1,0,5],[1,0,4,5]],
    msubs:=["16G0-16k"],
    msups:=["8D0-8a","8C0-8a","4E0-4a"],
    msupmaps:=["(2*(t^2-1))/((t^2+1))","((t^2+2*t-1))/((t^2+1))","((t^2+2*t-1))/((t^2-2*t-1))"],
    jlist:=[-5053029696/19140625,1417458895858368/11551562740081,524620702127808/180818608628161],
    jmap:="64*(t^2 - 3)^3*(3*t^2 - 1)^3*(t^4 - 14*t^2 +1)^3/((t^2+1)^8*(t^4-6*t^2+1)^2)">;
gl2tab["8G0-8l"]:=rec<g0gl2rec|
    label:="8G0-8l", genus:=0, sl2label:="8G0", gl2level:=8, sl2level:=8, index:=24, gl2id:=1978,
    gens:=[[1,2,0,1],[3,0,0,3],[5,0,0,5],[3,1,0,5],[3,0,2,1]],
    msubs:=["16G0-16l"],
    msups:=["4E0-8a","8D0-8d","8D0-8a"],
    msupmaps:=["((t^2-2))/(2*t)","(8*t)/((t^2+2))","(2*(t^2-2))/((t^2+2))"],
    jlist:=[97336000/321489,-10105715528000/12440502369,-125751501000000/113395848049],
    jmap:="64*(t^2-6)^3*(3*t^2 - 2)^3*(t^4 - 28*t^2 + 4)^3/((t^2+2)^8*(t^4-12*t^2+4)^2)">;
gl2tab["8H0-8a"]:=rec<g0gl2rec|
    label:="8H0-8a", genus:=0, sl2label:="8H0", gl2level:=8, sl2level:=8, index:=24, gl2id:=2081,
    gens:=[[3,0,0,3],[1,4,4,1],[0,3,5,0],[1,0,0,3],[1,0,0,5]],
    msubs:=[],
    msups:=["8B0-8a","8D0-8a","4F0-4a"],
    msupmaps:=["(2*t)/((t^2-2))","((t^2+2))/(2*t)","((t^2+2))/((t^2-2))"],
    jlist:=[9869198625/614656,1349232625/15752961,777228872334890625/60523872256],
    jmap:="(t^4+4)^3*(t^4 - 8*t^2 + 4)^3/(t^8*(t^2-2)^4)">;
gl2tab["8H0-8b"]:=rec<g0gl2rec|
    label:="8H0-8b", genus:=0, sl2label:="8H0", gl2level:=8, sl2level:=8, index:=24, gl2id:=2104,
    gens:=[[3,0,0,3],[1,4,4,1],[0,3,5,0],[1,0,0,3],[1,2,2,3]],
    msubs:=[],
    msups:=["4F0-8a","8D0-8a","8B0-8b"],
    msupmaps:=["(4*t)/((t^2-2))","(4*t)/((t^2+2))","((t^2+2))/(2*(t^2-2))"],
    jlist:=[-29218112/6561,1803374112448/103355177121,-8178917481792/514675673281],
    jmap:="64*(t^4-12*t^2+4)^3*(3*t^4-4*t^2+12)^3/((t^2-2)^4*(t^2+2)^8)">;
gl2tab["8H0-8c"]:=rec<g0gl2rec|
    label:="8H0-8c", genus:=0, sl2label:="8H0", gl2level:=8, sl2level:=8, index:=24, gl2id:=2113,
    gens:=[[3,0,0,3],[1,4,4,1],[0,3,5,0],[1,0,0,3],[1,4,0,5]],
    msubs:=[],
    msups:=["8B0-8b","8D0-8b","4F0-4a"],
    msupmaps:=["(t)/((t^2+1))","((t^2-1))/(t)","((t^2-1))/((t^2+1))"],
    jlist:=[176558481/10000,905915267776/4100625,12775159483633/2998219536],
    jmap:="16*(t^4+1)^3*(t^4+4*t^2+1)^3/(t^8*(t^2+1)^4)">;
gl2tab["8H0-8d"]:=rec<g0gl2rec|
    label:="8H0-8d", genus:=0, sl2label:="8H0", gl2level:=8, sl2level:=8, index:=24, gl2id:=2079,
    gens:=[[3,0,0,3],[1,4,4,1],[0,3,5,0],[1,0,0,5],[1,2,2,3]],
    msubs:=[],
    msups:=["8B0-8a","8D0-8a","4F0-4b"],
    msupmaps:=["((t^2+1))/((t^2+2*t-1))","((t^2-2*t-1))/((t^2+1))","((t^2-2*t-1))/((t^2+2*t-1))"],
    jlist:=[1434065043456/937890625,-1037448262725009408000/982935762864706561,-7414747814569181184/12744293212890625],
    jmap:="2^17*t^3*(t^2-1)^3*(t^4+2*t^3+2*t^2-2*t+1)^3/((t^2+1)^8*(t^2+2*t-1)^4)">;
gl2tab["8H0-8e"]:=rec<g0gl2rec|
    label:="8H0-8e", genus:=0, sl2label:="8H0", gl2level:=8, sl2level:=8, index:=24, gl2id:=2043,
    gens:=[[3,0,0,3],[1,4,4,1],[0,3,5,0],[1,4,0,3],[1,0,0,5]],
    msubs:=[],
    msups:=["8B0-8a","8D0-8c","4F0-4a"],
    msupmaps:=["(2*t)/((t^2+2))","((t^2-2))/(2*t)","((t^2-2))/((t^2+2))"],
    jlist:=[274625/81,5232666152934469558176256390625/294886783077799086801,250642822625/1679616],
    jmap:="(t^4+4)^3*(t^4 + 8*t^2 + 4)^3/(t^8*(t^2+2)^4)">;
gl2tab["8H0-8f"]:=rec<g0gl2rec|
    label:="8H0-8f", genus:=0, sl2label:="8H0", gl2level:=8, sl2level:=8, index:=24, gl2id:=2055,
    gens:=[[3,0,0,3],[1,4,4,1],[0,3,5,0],[1,4,0,3],[1,2,2,1]],
    msubs:=[],
    msups:=["4F0-8a","8B0-8a","8D0-8d"],
    msupmaps:=["((t^2-2))/(2*t)","((t^2+2))/(4*t)","(2*(t^2-2))/((t^2+2))"],
    jlist:=[5359375/6561,-5204436019037069447316867556625/39288676945557405202141041,-14977894625/688747536],
    jmap:="-(t^4+20*t^2+4)^3*(t^4-12*t^2+4)^3/(t^4*(t^2+2)^8)">;
gl2tab["8H0-8g"]:=rec<g0gl2rec|
    label:="8H0-8g", genus:=0, sl2label:="8H0", gl2level:=8, sl2level:=8, index:=24, gl2id:=2064,
    gens:=[[3,0,0,3],[1,4,4,1],[0,3,5,0],[1,4,0,3],[1,4,0,5]],
    msubs:=["8P0-8b","8P0-8a"],
    msups:=["8B0-8b","8D0-8d","4F0-4a"],
    msupmaps:=["(t)/((t^2-1))","((t^2+1))/(t)","((t^2+1))/((t^2-1))"],
    jlist:=[-94756448879/65610000,-40145726259521/164025000000,122031316628801/207360000],
    jmap:="16*(t^4+1)^3*(t^4-4*t^2+1)^3/(t^8*(t^2-1)^4)">;
gl2tab["8H0-8h"]:=rec<g0gl2rec|
    label:="8H0-8h", genus:=0, sl2label:="8H0", gl2level:=8, sl2level:=8, index:=24, gl2id:=2050,
    gens:=[[3,0,0,3],[1,4,4,1],[0,3,5,0],[1,4,0,5],[2,1,1,2]],
    msubs:=[],
    msups:=["4F0-4b","8B0-8b","8D0-8d"],
    msupmaps:=["((t^2-1))/(2*t)","((t^2+1))/(4*t)","(2*(t^2-1))/((t^2+1))"],
    jlist:=[63521199/1562500,-1745337664/31640625,-1132799901758784/509831700625],
    jmap:="-4*(t^8+4*t^6-58*t^4+4*t^2+1)^3/(t^4*(t^2+1)^8)">;
gl2tab["8H0-8i"]:=rec<g0gl2rec|
    label:="8H0-8i", genus:=0, sl2label:="8H0", gl2level:=8, sl2level:=8, index:=24, gl2id:=2060,
    gens:=[[3,0,0,3],[1,4,4,1],[0,3,5,0],[3,0,0,5],[1,2,2,1]],
    msubs:=[],
    msups:=["4F0-8b","8B0-8a","8D0-8d"],
    msupmaps:=["((t^2+2))/(2*t)","((t^2-2))/(4*t)","(2*(t^2+2))/((t^2-2))"],
    jlist:=[4869777375/92236816,6163717745375/466948881,-631595585199146625/218340105584896],
    jmap:="-(t^4-20*t^2+4)^3*(t^4+12*t^2+4)^3/(t^4*(t^2-2)^8)">;
gl2tab["8H0-8j"]:=rec<g0gl2rec|
    label:="8H0-8j", genus:=0, sl2label:="8H0", gl2level:=8, sl2level:=8, index:=24, gl2id:=2105,
    gens:=[[3,0,0,3],[1,4,4,1],[0,3,5,0],[3,0,0,5],[2,3,5,2]],
    msubs:=[],
    msups:=["4F0-8b","8D0-8a","8B0-8b"],
    msupmaps:=["(2*(t^2+1))/((t^2+2*t-1))","(2*(t^2+1))/((t^2-2*t-1))","((t^2-2*t-1))/(2*(t^2+2*t-1))"],
    jlist:=[56676204750528/2401,-881422385472/5764801,694158673008354922047168/4916747105530914241],
    jmap:="64*(t^2+2*t+3)^3*(3*t^2-2*t+1)^3*(t^4+12*t^3+2*t^2-12*t+1)^3/((t^2-2*t-1)^8*(t^2+2*t-1)^4)">;
gl2tab["8H0-8k"]:=rec<g0gl2rec|
    label:="8H0-8k", genus:=0, sl2label:="8H0", gl2level:=8, sl2level:=8, index:=24, gl2id:=2106,
    gens:=[[3,0,0,3],[1,4,4,1],[0,3,5,0],[3,4,0,5],[1,2,2,1]],
    msubs:=[],
    msups:=["4F0-8b","8B0-8a","8D0-8b"],
    msupmaps:=["((t^2+2*t-1))/((t^2+1))","((t^2-2*t-1))/(2*(t^2+1))","(2*(t^2+2*t-1))/((t^2-2*t-1))"],
    jlist:=[7020843884784/3603000625,419454394725624777846000/146767394485224241,3751731530276504323824/2724905250390625],
    jmap:="16*(3*t^4+4*t^3+6*t^2-4*t+3)^3*(5*t^4-4*t^3+10*t^2+4*t+5)^3/((t^2-2*t-1)^8*(t^2+1)^4)">;
gl2tab["8H0-8l"]:=rec<g0gl2rec|
    label:="8H0-8l", genus:=0, sl2label:="8H0", gl2level:=8, sl2level:=8, index:=24, gl2id:=2059,
    gens:=[[3,0,0,3],[1,4,4,1],[0,3,5,0],[3,4,0,5],[2,1,1,2]],
    msubs:=[],
    msups:=["4F0-8b","8D0-8c","8B0-8b"],
    msupmaps:=["(4*t)/((t^2+2))","(4*t)/((t^2-2))","((t^2-2))/(2*(t^2+2))"],
    jlist:=[2156689088/81,867486390918848/37822859361,11337854203055808/84402451441],
    jmap:="64*(t^4+12*t^2+4)^3*(3*t^4+4*t^2+12)^3/((t^2+2)^4*(t^2-2)^8)">;
gl2tab["8I0-8a"]:=rec<g0gl2rec|
    label:="8I0-8a", genus:=0, sl2label:="8I0", gl2level:=8, sl2level:=8, index:=24, gl2id:=1877,
    gens:=[[7,0,0,7],[0,3,5,2],[1,4,0,5],[1,6,0,3]],
    msubs:=["8O0-8l","8O0-8e","8O0-8g","8O0-8h","16H0-16a","16H0-16b","16H0-16d","16H0-16l"],
    msups:=["8C0-8d"],
    msupmaps:=["(4*t^2)/((t^2-2))"],
    jlist:=[28756228/3,-4354703137/17294403,439608956/259416045],
    jmap:="4*(t^8+56*t^6-40*t^4-32*t^2+16)^3/(t^4*(t^2-1)*(t^2-2)^8)">;
gl2tab["8I0-8b"]:=rec<g0gl2rec|
    label:="8I0-8b", genus:=0, sl2label:="8I0", gl2level:=8, sl2level:=8, index:=24, gl2id:=1908,
    gens:=[[7,0,0,7],[0,3,5,2],[3,2,0,1],[1,4,0,5]],
    msubs:=["8O0-8k","8O0-8g","16H0-16c","16H0-16f"],
    msups:=["8C0-8d"],
    msupmaps:=["(4*t^2)/((t^2+2))"],
    jlist:=[54607676/32805,-147281603041/215233605,1276229915423/2927177028],
    jmap:="-4*(t^8-56*t^6-40*t^4+32*t^2+16)^3/(t^4*(t^2+1)*(t^2+2)^8)",
    twin:="8I0-8d", note:="distinguished by subgroup 1363 of 1876 for minimal quadratic twist of 2048/3">;
gl2tab["8I0-8c"]:=rec<g0gl2rec|
    label:="8I0-8c", genus:=0, sl2label:="8I0", gl2level:=8, sl2level:=8, index:=24, gl2id:=1909,
    gens:=[[7,0,0,7],[0,3,5,2],[3,2,0,1],[5,4,0,1]],
    msubs:=["8O0-8b","8O0-8f","8O0-8k","8O0-8h","16H0-16k","16H0-16g","16H0-16e","16H0-16h"],
    msups:=["8C0-8d"],
    msupmaps:=["(4)/((t^2-1))"],
    jlist:=[6570725617/45927,784478485879202/221484375,-104094944089921/35880468750],
    jmap:="-16*(t^8 - 4*t^6 - 10*t^4 + 28*t^2 + 1)^3/(t^2*(t^2-1)^8*(t^2-2))">;
gl2tab["8I0-8d"]:=rec<g0gl2rec|
    label:="8I0-8d", genus:=0, sl2label:="8I0", gl2level:=8, sl2level:=8, index:=24, gl2id:=1876,
    gens:=[[7,0,0,7],[0,3,5,2],[5,2,0,3],[5,4,0,1]],
    msubs:=["8O0-8f","8O0-8l","16H0-16j","16H0-16i"],
    msups:=["8C0-8d"],
    msupmaps:=["(4)/((t^2+1))"],
    jlist:=[2048/3,-27995042/1171875,-37256083456/38671875],
    jmap:="-16*(t^8+4*t^6-10*t^4-28*t^2+1)^3/(t^2*(t^2+1)^8*(t^2+2))",
    twin:="8I0-8b", note:="distinguished by subgroup 1363 of 1876 for minimal quadratic twist of 2048/3">;
gl2tab["8J0-8a"]:=rec<g0gl2rec|
    label:="8J0-8a", genus:=0, sl2label:="8J0", gl2level:=8, sl2level:=8, index:=24, gl2id:=1922,
    gens:=[[3,2,0,3],[5,2,0,5],[1,2,4,1],[1,0,0,3],[1,0,0,5]],
    msubs:=["8N0-8a","8N0-8e","8O0-8c","8O0-8i"],
    msups:=["4E0-4c"],
    msupmaps:=["((t^2+2))/(t^2)"],
    jlist:=[868327204/5625,39383007958948/22674035241,15529488955216/6125625],
    jmap:="256*(t^8+4*t^6+5*t^4+2*t^2+1)^3/(t^4*(t^2+1)^4*(t^2+2)^2)",
    twin:="8J0-8d", note:="distinguished by subgroup 1486 of 1982 for minimal twist of 3631696/2025">;
gl2tab["8J0-8b"]:=rec<g0gl2rec|
    label:="8J0-8b", genus:=0, sl2label:="8J0", gl2level:=8, sl2level:=8, index:=24, gl2id:=1917,
    gens:=[[3,2,0,3],[5,2,0,5],[1,2,4,1],[1,0,0,3],[1,2,0,5]],
    msubs:=["8N0-8c","8N0-8b","8N0-8e","8N0-8f","8O0-8a","8O0-8i","8O0-8d","8O0-8e"],
    msups:=["4E0-4c"],
    msupmaps:=["(t^2-1)"],
    jlist:=[37966934881/8643600,13027640977/21609,175293437776/4862025],
    jmap:="16*(t^8-4*t^6+20*t^4-32*t^2+16)^3/(t^8*(t^2-1)^2*(t^2-2)^4)">;
gl2tab["8J0-8c"]:=rec<g0gl2rec|
    label:="8J0-8c", genus:=0, sl2label:="8J0", gl2level:=8, sl2level:=8, index:=24, gl2id:=1990,
    gens:=[[3,2,0,3],[5,2,0,5],[1,2,4,1],[1,2,0,3],[1,0,0,5]],
    msubs:=["8N0-8b","8N0-8a","8N0-8d","8N0-8f","8O0-8a","8O0-8b","8O0-8c","8O0-8j"],
    msups:=["4E0-4c"],
    msupmaps:=["(t^2)/((t^2-2))"],
    jlist:=[7189057/3969,549871953124/200930625,128031684631201/9922500],
    jmap:="256*(t^8-4*t^6+5*t^4-2*t^2+1)^3/(t^4*(t^2-1)^4*(t^2-2)^2)">;
gl2tab["8J0-8d"]:=rec<g0gl2rec|
    label:="8J0-8d", genus:=0, sl2label:="8J0", gl2level:=8, sl2level:=8, index:=24, gl2id:=1982,
    gens:=[[3,2,0,3],[5,2,0,5],[1,2,4,1],[1,2,0,3],[1,2,0,5]],
    msubs:=["8N0-8c","8N0-8d","8O0-8j","8O0-8d"],
    msups:=["4E0-4c"],
    msupmaps:=["(t^2+1)"],
    jlist:=[3631696/2025,5927735656804/2401490025,45551779131472/200420649],
    jmap:="16*(t^8+4*t^6+20*t^4+32*t^2+16)^3/(t^8*(t^2+1)^2*(t^2+2)^4)",
    twin:="8J0-8a", note:="distinguished by subgroup 1486 of 1982 for minimal twist of 3631696/2025">;
gl2tab["8K0-16a"]:=rec<g0gl2rec|
    label:="8K0-16a", genus:=0, sl2label:="8K0", gl2level:=16, sl2level:=8, index:=24, gl2id:=27712,
    gens:=[[1,4,0,1],[7,0,0,7],[0,3,5,0],[3,0,0,5],[1,2,2,1]],
    msubs:=["8N0-16b","8N0-16a"],
    msups:=["4F0-8b"],
    msupmaps:=["(t^2+4)/2"],
    jlist:=[-5832000/2401,-16905335954625/671898241,-333725383137067137/481481944321],
    jmap:="-(t^4+8*t^2-8)^3*(t^4+8*t^2+24)^3/(t^4+8*t^2+8)^4",
    twin:="8K0-16c", note:="distinguished by subgroup 27183 of 27709 for basechange of j=-574992/2401 to Q(sqrt(7)">;
gl2tab["8K0-16b"]:=rec<g0gl2rec|
    label:="8K0-16b", genus:=0, sl2label:="8K0", gl2level:=16, sl2level:=8, index:=24, gl2id:=27710,
    gens:=[[1,4,0,1],[7,0,0,7],[0,3,5,0],[7,0,0,9],[1,2,2,1]],
    msubs:=["8N0-16b","8N0-16e","8N0-16d","8N0-16f"],
    msups:=["4F0-8b"],
    msupmaps:=["(t^2-4)/2"],
    jlist:=[253960833546783/1249198336,208475114097375/9971220736,1034345877771968/6059221281],
    jmap:="-(t^4-8*t^2-8)^3*(t^4-8*t^2+24)^3/(t^4-8*t^2+8)^4",
    twin:="8K0-16d", note:="distinguished by subgroup 27290 of 27711 for basechange of j=30811485375/14776336 to Q(sqrt(31))">;
gl2tab["8K0-16c"]:=rec<g0gl2rec|
    label:="8K0-16c", genus:=0, sl2label:="8K0", gl2level:=16, sl2level:=8, index:=24, gl2id:=27709,
    gens:=[[1,4,0,1],[7,0,0,7],[2,3,1,2],[3,0,0,5],[1,2,2,1]],
    msubs:=["8N0-16c","8N0-16d"],
    msups:=["4F0-8b"],
    msupmaps:=["(t^2+2)"],
    jlist:=[-574992/2401,-45282337578000/200533921,-1114125617293632/671898241],
    jmap:="-16*(t^4+4*t^2-2)^3*(t^4+4*t^2+6)^3/(t^4+4*t^2+2)^4",
    twin:="8K0-16a", note:="distinguished by subgroup 27183 of 27709 for basechange of j=-574992/2401 to Q(sqrt(7)">;
gl2tab["8K0-16d"]:=rec<g0gl2rec|
    label:="8K0-16d", genus:=0, sl2label:="8K0", gl2level:=16, sl2level:=8, index:=24, gl2id:=27711,
    gens:=[[1,4,0,1],[7,0,0,7],[2,3,1,2],[7,0,0,9],[1,2,2,1]],
    msubs:=["8N0-16c","8N0-16e","8N0-16a","8N0-16f"],
    msups:=["4F0-8b"],
    msupmaps:=["(t^2-2)"],
    jlist:=[30811485375/14776336,-168746928912/4879681,55175798943/1336336,-53242246728000/88529281,607591618913109375/166473577271296,12532155733812465682038000/18809442516445441,996544986694191423/10129299214336,1151968490735775903/342102016],
    jmap:="-16*(t^4-4*t^2-2)^3*(t^4-4*t^2+6)^3/(t^4-4*t^2+2)^4",
    twin:="8K0-16b", note:="distinguished by subgroup 27290 of 27711 for basechange of j=30811485375/14776336 to Q(sqrt(31))">;
gl2tab["8L0-8a"]:=rec<g0gl2rec|
    label:="8L0-8a", genus:=0, sl2label:="8L0", gl2level:=8, sl2level:=8, index:=24, gl2id:=2038,
    gens:=[[0,3,5,0],[5,2,2,1],[1,2,0,3],[1,4,0,5]],
    msubs:=[],
    msups:=["8B0-8d"],
    msupmaps:=["((t^2-2*t-1))/(4*t)"],
    jlist:=[78608,68769820673/16,34909201168/81],
    jmap:="(t^8-8*t^7+20*t^6-8*t^5+230*t^4+8*t^3+20*t^2+8*t+1)^3/(t^4*(t^2-2*t-1)^8)">;
gl2tab["8L0-8b"]:=rec<g0gl2rec|
    label:="8L0-8b", genus:=0, sl2label:="8L0", gl2level:=8, sl2level:=8, index:=24, gl2id:=2138,
    gens:=[[0,3,5,0],[5,2,2,1],[5,4,0,1],[3,6,0,1]],
    msubs:=[],
    msups:=["8B0-8d"],
    msupmaps:=["(2*t)/((t^2-2*t-1))"],
    jlist:=[2048,16974593/256,141150208/6561],
    jmap:="(t^8-8*t^7+20*t^6-8*t^5-10*t^4+8*t^3+20*t^2+8*t+1)^3/(t^8*(t^2-2*t-1)^4)">;
gl2tab["8N0-16a"]:=rec<g0gl2rec|
    label:="8N0-16a", genus:=0, sl2label:="8N0", gl2level:=16, sl2level:=8, index:=48, gl2id:=26873,
    gens:=[[1,4,0,1],[7,0,0,7],[9,0,0,9],[1,0,4,1],[0,1,1,0],[2,3,5,6]],
    msubs:=[],
    msups:=["4G0-8a","8K0-16a","8K0-16d"],
    msupmaps:=["((t^2+2))/(2*t)","(8*t)/((t^2-2))","(2*(t^2+2))/((t^2-2))"],
    jlist:=[-2361669926013000000/110841719041,-8603106316245382773026376000/1652009370694842768644161,-8869322426572968300483549768000/155758980343034896268662081,-11879916388428907688659091960904000/50337232233359674679397806106241],
    jmap:="(64*(t^4-8*t^3-4*t^2-16*t+4)^3*(t^4+8*t^3-4*t^2+16*t+4)^3*(3*t^8+40*t^6+328*t^4+160*t^2+48)^3)/((t^2-2)^8*(t^8+56*t^6+280*t^4+224*t^2+16)^4)",
    twin:="8N0-16d", note:="distinguished by subgroup 25193 of 26872 for basechange of j=-1481544000/83521 to Q(sqrt(17)">;
gl2tab["8N0-16b"]:=rec<g0gl2rec|
    label:="8N0-16b", genus:=0, sl2label:="8N0", gl2level:=16, sl2level:=8, index:=48, gl2id:=26878,
    gens:=[[1,4,0,1],[7,0,0,7],[9,0,0,9],[1,0,4,1],[0,1,5,0],[2,5,1,2]],
    msubs:=[],
    msups:=["4G0-8e","8K0-16a","8K0-16b"],
    msupmaps:=["t^2/2","((t^2-2))/(t)","((t^2+2))/(t)"],
    jlist:=[-35937/83521,-71873576578719133003297/12276693268618940001,-4674109937058628591617/72127988556103936,31677492423978718949173823/21664559655581731266816],
    jmap:="-(t^16-224*t^8+256)^3/(t^8*(t^8+16)^4)",
    twin:="8N0-16c", note:="distinguished by subgroup 24293 of 26879 for minimal quadratic twist of -79256915463838441460032/760317452160109281 over Q">;
gl2tab["8N0-16c"]:=rec<g0gl2rec|
    label:="8N0-16c", genus:=0, sl2label:="8N0", gl2level:=16, sl2level:=8, index:=48, gl2id:=26879,
    gens:=[[1,4,0,1],[7,0,0,7],[9,0,0,9],[1,0,4,1],[1,2,2,1],[0,5,1,0]],
    msubs:=[],
    msups:=["8K0-16c","4G0-8e","8K0-16d"],
    msupmaps:=["(4*t)/((t^2-1))","((t+1)^2)/((t-1)^2)","(2*(t^2+1))/((t^2-1))"],
    jlist:=[-237786406770177/69799526416,-7526808409264851635137/226706095054140654096,-79256915463838441460032/760317452160109281],
    jmap:="(64*(t^8-36*t^6-58*t^4-36*t^2+1)^3*(3*t^8+20*t^6+82*t^4+20*t^2+3)^3)/((t-1)^8*(t+1)^8*(t^8+28*t^6+70*t^4+28*t^2+1)^4)",
    twin:="8N0-16b", note:="distinguished by subgroup 24293 of 26879 for minimal quadratic twist of -79256915463838441460032/760317452160109281 over Q">;
gl2tab["8N0-16d"]:=rec<g0gl2rec|
    label:="8N0-16d", genus:=0, sl2label:="8N0", gl2level:=16, sl2level:=8, index:=48, gl2id:=26872,
    gens:=[[1,4,0,1],[7,0,0,7],[9,0,0,9],[1,0,4,1],[3,2,2,5],[2,3,5,6]],
    msubs:=[],
    msups:=["4G0-8a","8K0-16b","8K0-16c"],
    msupmaps:=["(2*(t^2+1))/((t^2-2*t-1))","(4*(t^2+1))/((t^2+2*t-1))","(2*(t^2-2*t-1))/((t^2+2*t-1))"],
    jlist:=[-1481544000/83521,225359676913567450062528/354843419232618576001,-3629521158215708565479575872/147609026049038401,-422571613509664321463518941000000/15189486512442731436771296141761],
    jmap:="-64*(3*t^4-12*t^3-2*t^2-4*t-5)^3*(5*t^4-4*t^3+2*t^2-12*t-3)^3*(19*t^8-40*t^7+124*t^6-40*t^5+18*t^4+40*t^3+124*t^2+40*t+19)^3/((t^2+2*t-1)^8*(17*t^8-56*t^7+84*t^6-56*t^5+70*t^4+56*t^3+84*t^2+56*t+17)^4)",
    twin:="8N0-16a", note:="distinguished by subgroup 25193 of 26872 for basechange of j=-1481544000/83521 to Q(sqrt(17)">;
gl2tab["8N0-16e"]:=rec<g0gl2rec|
    label:="8N0-16e", genus:=0, sl2label:="8N0", gl2level:=16, sl2level:=8, index:=48, gl2id:=26884,
    gens:=[[1,4,0,1],[7,0,0,7],[9,0,0,9],[1,0,4,1],[7,0,0,9],[1,2,2,1]],
    msubs:=[],
    msups:=["4G0-8d","8K0-16d","8K0-16b"],
    msupmaps:=["((t^2-1))/(2*t)","(2*(t^2-1))/((t^2+1))","(2*(t^2+2*t-1))/((t^2+1))"],
    jlist:=[135724155876674944704/30130233375390625,2223195193044224900418031996608/2661573245207960161,1245693443341873091178984884676288/7025499814812038023435816321],
    jmap:="(64*(3*t^8-20*t^6+82*t^4-20*t^2+3)^3*(t^8+36*t^6-58*t^4+36*t^2+1)^3)/((t^2+1)^8*(t^4-4*t^3-6*t^2+4*t+1)^4*(t^4+4*t^3-6*t^2-4*t+1)^4)">;
gl2tab["8N0-16f"]:=rec<g0gl2rec|
    label:="8N0-16f", genus:=0, sl2label:="8N0", gl2level:=16, sl2level:=8, index:=48, gl2id:=26877,
    gens:=[[1,4,0,1],[7,0,0,7],[9,0,0,9],[1,0,4,1],[7,0,0,9],[2,1,1,6]],
    msubs:=[],
    msups:=["4G0-8f","8K0-16b","8K0-16d"],
    msupmaps:=["((t^2-2))/(2*t)","(8*t)/((t^2+2))","(2*(t^2-2))/((t^2+2))"],
    jlist:=[1119033462968000/547981281,162380265039881927673272000/55158962254334042632641,19503134982475990993057464000/7296662923135917103936801],
    jmap:="(64*(3*t^8-40*t^6+328*t^4-160*t^2+48)^3*(t^8+72*t^6-232*t^4+288*t^2+16)^3)/((t^2+2)^8*(t^4-8*t^3+4*t^2+16*t+4)^4*(t^4+8*t^3+4*t^2-16*t+4)^4)">;
gl2tab["8N0-32a"]:=rec<g0gl2rec|
    label:="8N0-32a", genus:=0, sl2label:="8N0", gl2level:=32, sl2level:=8, index:=48, gl2id:=190871,
    gens:=[[1,4,0,1],[15,0,0,15],[7,0,0,23],[1,0,4,1],[3,0,0,5],[2,3,1,0]],
    msubs:=[],
    msups:=["4G0-16a"],
    msupmaps:=["((1-2*t-t^2))/((t^2-2*t-1))"],
    jlist:=[10976,942759267869059275488/519868500390625,431526329926715724512/216672212250390625],
    jmap:="32*(7*t^16-16*t^15+56*t^14+560*t^13+196*t^12-4368*t^11+392*t^10+11440*t^9+490*t^8-11440*t^7+392*t^6+4368*t^5+196*t^4-560*t^3+56*t^2+16*t+7)^3/((t^2+1)^8*(t^8+8*t^7-28*t^6-56*t^5+70*t^4+56*t^3-28*t^2-8*t+1)^4)">;
gl2tab["8N0-8a"]:=rec<g0gl2rec|
    label:="8N0-8a", genus:=0, sl2label:="8N0", gl2level:=8, sl2level:=8, index:=48, gl2id:=1586,
    gens:=[[1,4,0,1],[7,0,0,7],[1,0,4,1],[1,2,0,3],[1,0,0,5]],
    msubs:=[],
    msups:=["4G0-4a","8J0-8a","8J0-8c"],
    msupmaps:=["t^2","((t^2-2))/(2*t)","((t^2+2))/(2*t)"],
    jlist:=[111284641/50625,4770955732122964500481/71987251059360000,88220021994562887162721/12039505273890950625],
    jmap:="(t^16+224*t^8+256)^3/((t^8-16)^4*t^8)">;
gl2tab["8N0-8b"]:=rec<g0gl2rec|
    label:="8N0-8b", genus:=0, sl2label:="8N0", gl2level:=8, sl2level:=8, index:=48, gl2id:=1590,
    gens:=[[1,4,0,1],[7,0,0,7],[1,0,4,1],[1,2,0,3],[1,2,0,5]],
    msubs:=[],
    msups:=["4G0-8c","8J0-8c","8J0-8b"],
    msupmaps:=["((t^2-2))/(2*t)","(4*t)/((t^2+2))","((t^2+2))/((t^2-2))"],
    jlist:=[124475734657/63011844,70108386184777836280897/552468975892674624,8856076866003496152467137/46664863048067576004],
    jmap:="1/4*(t^16-16*t^14+1008*t^12-7616*t^10+26720*t^8-30464*t^6+16128*t^4-1024*t^2+256)^3/(t^4*(t^2+2)^8*(t^2-2)^4*(t^4-12*t^2+4)^4)">;
gl2tab["8N0-8c"]:=rec<g0gl2rec|
    label:="8N0-8c", genus:=0, sl2label:="8N0", gl2level:=8, sl2level:=8, index:=48, gl2id:=1570,
    gens:=[[1,4,0,1],[7,0,0,7],[1,0,4,1],[1,2,0,3],[3,2,0,5]],
    msubs:=[],
    msups:=["4G0-4a","8J0-8d","8J0-8b"],
    msupmaps:=["((t^2+1))/(t)","((t^2-1))/(2*t)","((t^2-1))/((t^2+1))"],
    jlist:=[330240275458561/67652010000,19599160390581221281/185398179210000,295766137257618460155841/165893887376396010000],
    jmap:="(t^16+8*t^14+252*t^12+952*t^10+1670*t^8+952*t^6+252*t^4+8*t^2+1)^3/(t^4*(t^2-1)^8*(t^2+1)^4*(t^4+6*t^2+1)^4)">;
gl2tab["8N0-8d"]:=rec<g0gl2rec|
    label:="8N0-8d", genus:=0, sl2label:="8N0", gl2level:=8, sl2level:=8, index:=48, gl2id:=1631,
    gens:=[[1,4,0,1],[7,0,0,7],[1,0,4,1],[3,0,0,1],[1,0,2,5]],
    msubs:=[],
    msups:=["4G0-8c","8J0-8c","8J0-8d"],
    msupmaps:=["(2*(t^2+1))/((t^2+2*t-1))","(2*(t^2+1))/((t^2-2*t-1))","((t^2-2*t-1))/((t^2+2*t-1))"],
    jlist:=[993061270514775420004/24375023431250625,3544454449806874081077604/144149438750625,1556068/81],
    jmap:="4*(73*t^16+464*t^15+1576*t^14+2576*t^13+4284*t^12+3920*t^11+2072*t^10+1808*t^9+2678*t^8-1808*t^7+2072*t^6-3920*t^5+4284*t^4-2576*t^3+1576*t^2-464*t+73)^3/((t^2-2*t-1)^8*(t^2+1)^4*(t^2+2*t-1)^4*(3*t^4+4*t^3+6*t^2-4*t+3)^4)">;
gl2tab["8N0-8e"]:=rec<g0gl2rec|
    label:="8N0-8e", genus:=0, sl2label:="8N0", gl2level:=8, sl2level:=8, index:=48, gl2id:=1630,
    gens:=[[1,4,0,1],[7,0,0,7],[1,0,4,1],[3,0,0,1],[1,2,0,5]],
    msubs:=[],
    msups:=["4G0-8c","8J0-8a","8J0-8b"],
    msupmaps:=["((t^2+2))/(2*t)","(4*t)/((t^2-2))","((t^2-2))/((t^2+2))"],
    jlist:=[576615941610337/27060804,2636868297360311637368257/394682713874252564544,1361776528639947612952394618944897/47991456543865103424],
    jmap:="(t^16+16*t^14+1008*t^12+7616*t^10+26720*t^8+30464*t^6+16128*t^4+1024*t^2+256)^3/(4*t^4*(t^2-2)^8*(t^2+2)^4*(t^4+12*t^2+4)^4)">;
gl2tab["8N0-8f"]:=rec<g0gl2rec|
    label:="8N0-8f", genus:=0, sl2label:="8N0", gl2level:=8, sl2level:=8, index:=48, gl2id:=1607,
    gens:=[[1,4,0,1],[7,0,0,7],[1,0,4,1],[3,0,0,1],[5,0,0,1]],
    msubs:=[],
    msups:=["4G0-4a","8J0-8b","8J0-8c"],
    msupmaps:=["((t^2-1))/(t)","((t^2+1))/(2*t)","((t^2+2*t-1))/((t^2+1))"],
    jlist:=[47595748626367201/1215506250000,229010110533436633465952161/132501160769452503210000,164810665209657549410090824321/60743509039087274201760000],
    jmap:="(t^16-8*t^14+252*t^12-952*t^10+1670*t^8-952*t^6+252*t^4-8*t^2+1)^3/(t^4*(t^2+1)^8*(t^2-1)^4*(t^4-6*t^2+1)^4)">;
gl2tab["8O0-16a"]:=rec<g0gl2rec|
    label:="8O0-16a", genus:=0, sl2label:="8O0", gl2level:=16, sl2level:=8, index:=48, gl2id:=26401,
    gens:=[[1,4,0,1],[7,0,0,7],[3,2,0,11],[1,0,8,1],[1,3,0,5],[5,1,4,3]],
    msubs:=[],
    msups:=["8G0-8j"],
    msupmaps:=["(1-t^2)/(2*t)"],
    jlist:=[2409899378417723918088/154053443637780625,57543938637803882318088/4189814313000625,1138275937857480787581070133064456/1631432881],
    jmap:="8*(3*t^8+24*t^7+44*t^6-40*t^5+82*t^4+40*t^3+44*t^2-24*t+3)^3*(11*t^8-8*t^7+12*t^6-72*t^5+2*t^4+72*t^3+12*t^2+8*t+11)^3/((t^2+1)^4*(t^4-4*t^3-6*t^2+4*t+1)^8*(t^4+4*t^3-6*t^2-4*t+1)^2)">;
gl2tab["8O0-8a"]:=rec<g0gl2rec|
    label:="8O0-8a", genus:=0, sl2label:="8O0", gl2level:=8, sl2level:=8, index:=48, gl2id:=1472,
    gens:=[[3,2,0,3],[5,2,0,5],[1,0,0,3],[1,0,4,5]],
    msubs:=[],
    msups:=["8G0-8b","8J0-8b","8J0-8c"],
    msupmaps:=["((t^2-2))/(2*t)","(4*t)/((t^2+2))","((t^2+2))/((t^2-2))"],
    jlist:=[65597103937/63504,82582985847542515777/44772582831427584,8232463578739844255617/4687062591766850064],
    jmap:="(t^16-16*t^14+48*t^12+64*t^10+3680*t^8+256*t^6+768*t^4-1024*t^2+256)^3/(16*t^8*(t^2-2)^8*(t^2+2)^4*(t^4-12*t^2+4)^2)">;
gl2tab["8O0-8b"]:=rec<g0gl2rec|
    label:="8O0-8b", genus:=0, sl2label:="8O0", gl2level:=8, sl2level:=8, index:=48, gl2id:=1545,
    gens:=[[3,2,0,3],[5,2,0,5],[1,0,0,5],[1,0,4,3]],
    msubs:=[],
    msups:=["8G0-8a","8J0-8c","8I0-8c"],
    msupmaps:=["((t^2-1))/(2*t)","((t^2+1))/(2*t)","((t^2+2*t-1))/((t^2+1))"],
    jlist:=[13350979617415439280823624321/363628103290905600000000,135487869158881/51438240000,72727020009972527154752161/265361167808100000000],
    jmap:="(t^16-8*t^14+12*t^12+8*t^10+230*t^8+8*t^6+12*t^4-8*t^2+1)^3/(t^8*(t^2-1)^8*(t^2+1)^4*(t^4- 6*t^2 + 1)^2)">;
gl2tab["8O0-8c"]:=rec<g0gl2rec|
    label:="8O0-8c", genus:=0, sl2label:="8O0", gl2level:=8, sl2level:=8, index:=48, gl2id:=1546,
    gens:=[[3,2,0,3],[5,2,0,5],[1,2,0,3],[1,0,0,5]],
    msubs:=[],
    msups:=["8J0-8a","8J0-8c","8G0-8a"],
    msupmaps:=["(2*t)/((t^2-1))","(2*t)/((t^2+1))","((t^2+1))/((t^2-1))"],
    jlist:=[508686956122817563500015361/971393810414076562500,41623544884956481/2962701562500,25976677550021281/13616100000000],
    jmap:="4*(t^16 + 60*t^12 + 134*t^8 + 60*t^4 + 1)^3/(t^4*(t^4-1)^8*(t^4+1)^2)",
    twin:="8O0-8d", note:="distinguished by subgroup 756 of 1546 for minimal quadratic twist of 272223782641/164025">;
gl2tab["8O0-8d"]:=rec<g0gl2rec|
    label:="8O0-8d", genus:=0, sl2label:="8O0", gl2level:=8, sl2level:=8, index:=48, gl2id:=1547,
    gens:=[[3,2,0,3],[5,2,0,5],[1,2,0,3],[1,2,0,5]],
    msubs:=[],
    msups:=["8J0-8b","8J0-8d","8G0-8a"],
    msupmaps:=["((t^2+2))/(2*t)","((t^2-2))/(2*t)","((t^2+2))/((t^2-2))"],
    jlist:=[36128658497509929012481/16775330746084419600,272223782641/164025,6328611043032432939084721/723183771220991613225],
    jmap:="(t^16+240*t^12+2144*t^8+3840*t^4+256)^3/(t^4*(t^4-4)^8*(t^4+4)^2)",
    twin:="8O0-8c", note:="distinguished by subgroup 756 of 1546 for minimal quadratic twist of 272223782641/164025">;
gl2tab["8O0-8e"]:=rec<g0gl2rec|
    label:="8O0-8e", genus:=0, sl2label:="8O0", gl2level:=8, sl2level:=8, index:=48, gl2id:=1402,
    gens:=[[3,2,0,3],[5,2,0,5],[1,2,0,5],[1,2,4,3]],
    msubs:=[],
    msups:=["8I0-8a","8J0-8b","8G0-8a"],
    msupmaps:=["((t^2+1))/(2*t)","((t^2+2*t-1))/((t^2+1))","((t^2+2*t-1))/((t^2-2*t-1))"],
    jlist:=[468099305477291219804418298216321/135739171637240733141123600,311802066473807207098058600161/1033693082103011001480900,191342053882402567201/129708022500],
    jmap:="(t^16+232*t^14+732*t^12-1192*t^10+710*t^8-1192*t^6+732*t^4+232*t^2+1)^3/(t^2*(t^2-1)^2*(t^2+1)^4*(t^4- 6*t^2 + 1)^8)">;
gl2tab["8O0-8f"]:=rec<g0gl2rec|
    label:="8O0-8f", genus:=0, sl2label:="8O0", gl2level:=8, sl2level:=8, index:=48, gl2id:=1423,
    gens:=[[3,2,0,3],[5,2,0,5],[1,3,0,3],[1,0,0,5]],
    msubs:=[],
    msups:=["8G0-8f","8I0-8c","8I0-8d"],
    msupmaps:=["t^2/2","((t^2+2))/(2*t)","((t^2-2))/(2*t)"],
    jlist:=[354040227097633869554159/1308633021594847265625,-4047051964543660801/20235220197806250000,4733169839/3515625],
    jmap:="-(t^16-240*t^12+2144*t^8-3840*t^4+256)^3/(t^4*(t^4+4)^8*(t^4-4)^2)">;
gl2tab["8O0-8g"]:=rec<g0gl2rec|
    label:="8O0-8g", genus:=0, sl2label:="8O0", gl2level:=8, sl2level:=8, index:=48, gl2id:=1425,
    gens:=[[3,2,0,3],[5,2,0,5],[1,3,0,3],[1,2,0,5]],
    msubs:=[],
    msups:=["8G0-8f","8I0-8b","8I0-8a"],
    msupmaps:=["t^2","(2*t)/((t^2-1))","(2*t)/((t^2+1))"],
    jlist:=[17966019185011323998732159/10728662847342621912900,3168685387909439/6278181696900,-425532204913949281/64677894355880100],
    jmap:="-4*(t^16 - 60*t^12 + 134*t^8 - 60*t^4 + 1)^3/(t^4*(t^4+1)^8*(t^4-1)^2)">;
gl2tab["8O0-8h"]:=rec<g0gl2rec|
    label:="8O0-8h", genus:=0, sl2label:="8O0", gl2level:=8, sl2level:=8, index:=48, gl2id:=1426,
    gens:=[[3,2,0,3],[5,2,0,5],[1,3,0,3],[1,3,4,1]],
    msubs:=[],
    msups:=["8G0-8g","8I0-8c","8I0-8a"],
    msupmaps:=["((t^2-2))/(2*t)","(4*t)/((t^2+2))","((t^2+2))/((t^2-2))"],
    jlist:=[84448510979617/933897762,285531136548675601769470657/17941034271597192,36136672427711016379227705697/1011258101510224722],
    jmap:="(t^16+464*t^14+2928*t^12-9536*t^10+11360*t^8-38144*t^6+46848*t^4+29696*t^2+256)^3/(2*t^2*(t^2-2)^2*(t^2+2)^4*(t^4-12*t^2+4)^8)">;
gl2tab["8O0-8i"]:=rec<g0gl2rec|
    label:="8O0-8i", genus:=0, sl2label:="8O0", gl2level:=8, sl2level:=8, index:=48, gl2id:=1377,
    gens:=[[3,2,0,3],[5,2,0,5],[3,0,0,5],[1,2,4,3]],
    msubs:=[],
    msups:=["8J0-8a","8J0-8b","8G0-8b"],
    msupmaps:=["((t^2-2))/((t^2-4*t+2))","(2*(t^2-2*t+2))/((t^2-2))","(2*(t^2-2*t+2))/((t^2-4*t+2))"],
    jlist:=[3901566248250599880016/2439453515625,3477299736386222510416/22070630703515625,35152/9],
    jmap:="16*(t^8-4*t^7+16*t^6-56*t^5+120*t^4-112*t^3+64*t^2-32*t+16)^3*(13*t^8-140*t^7+688*t^6-1960*t^5+3480*t^4-3920*t^3+2752*t^2-1120*t+208)^3/((t^2-2)^4*(3*t^4-16*t^3+36*t^2-32*t+12)^2*(t^2-4*t+2)^8*(t^2-2*t+2)^8)">;
gl2tab["8O0-8j"]:=rec<g0gl2rec|
    label:="8O0-8j", genus:=0, sl2label:="8O0", gl2level:=8, sl2level:=8, index:=48, gl2id:=1470,
    gens:=[[3,2,0,3],[5,2,0,5],[3,2,0,5],[1,0,4,3]],
    msubs:=[],
    msups:=["8G0-8b","8J0-8d","8J0-8c"],
    msupmaps:=["((t^2+2))/(2*t)","(4*t)/((t^2-2))","((t^2-2))/((t^2+2))"],
    jlist:=[4519442732260060904828257/2012511078474919689744,163936758817/30338064,52216468987655587801537/5405664283271368704],
    jmap:="(t^16+16*t^14+48*t^12-64*t^10+3680*t^8-256*t^6+768*t^4+1024*t^2+256)^3/(16*t^8*(t^2+2)^8*(t^2-2)^4*(t^4+12*t^2+4)^2)">;
gl2tab["8O0-8k"]:=rec<g0gl2rec|
    label:="8O0-8k", genus:=0, sl2label:="8O0", gl2level:=8, sl2level:=8, index:=48, gl2id:=1543,
    gens:=[[3,2,0,3],[5,2,0,5],[3,3,0,5],[1,0,4,3]],
    msubs:=[],
    msups:=["8I0-8b","8G0-8c","8I0-8c"],
    msupmaps:=["((t^2+4*t+2))/((t^2-2))","(2*(t^2+2*t+2))/((t^2-2))","(2*(t^2+2*t+2))/((t^2+4*t+2))"],
    jlist:=[1547236207661507998/2747220872838320025,207646/6561,-1764102724103262766456802/11303622506742021225],
    jmap:="2*(t^8+32*t^7+232*t^6+768*t^5+1240*t^4+640*t^3-864*t^2-1536*t-752)^3*(47*t^8+192*t^7+216*t^6-320*t^5-1240*t^4-1536*t^3-928*t^2-256*t-16)^3/((t^2-2)^2*(t^2+2)^8*(t^2+2*t+2)^2*(t^2+4*t+2)^4*(3*t^2+8*t+6)^8)">;
gl2tab["8O0-8l"]:=rec<g0gl2rec|
    label:="8O0-8l", genus:=0, sl2label:="8O0", gl2level:=8, sl2level:=8, index:=48, gl2id:=1400,
    gens:=[[3,2,0,3],[5,2,0,5],[3,3,0,5],[1,1,4,1]],
    msubs:=[],
    msups:=["8G0-8c","8I0-8d","8I0-8a"],
    msupmaps:=["((t^2+2))/(2*t)","(4*t)/((t^2-2))","((t^2-2))/((t^2+2))"],
    jlist:=[-491411892194497/125563633938,13019292502618911321403583/41361350806450865699208,-1361592473832816931257389760013057/255644730036690536617042248],
    jmap:="-(t^16-464*t^14+2928*t^12+9536*t^10+11360*t^8+38144*t^6+46848*t^4-29696*t^2+256)^3/(2*t^2*(t^2+2)^2*(t^2-2)^4*(t^4+12*t^2+4)^8)">;
gl2tab["8P0-8a"]:=rec<g0gl2rec|
    label:="8P0-8a", genus:=0, sl2label:="8P0", gl2level:=8, sl2level:=8, index:=48, gl2id:=1676,
    gens:=[[3,4,4,3],[0,3,5,0],[3,4,0,1],[1,4,0,5]],
    msubs:=[],
    msups:=["8H0-8g"],
    msupmaps:=["((t^2+2))/((t^2-4*t+2))"],
    jlist:=[88429809661733359/94557148402500,838561807/26244,1071679233972039583519/1721868840000],
    jmap:="-(t^8-8*t^7-8*t^6+80*t^5-168*t^4+160*t^3-32*t^2-64*t+16)^3*(t^8-8*t^7+56*t^6-176*t^5+344*t^4-352*t^3+224*t^2-64*t+16)^3/(4*t^4*(t^2-4*t+2)^8*(t^2-2*t+2)^4*(t^2+2)^8)">;
gl2tab["8P0-8b"]:=rec<g0gl2rec|
    label:="8P0-8b", genus:=0, sl2label:="8P0", gl2level:=8, sl2level:=8, index:=48, gl2id:=1677,
    gens:=[[3,4,4,3],[0,3,5,0],[3,4,0,1],[5,4,0,1]],
    msubs:=[],
    msups:=["8H0-8g"],
    msupmaps:=["((t^2+1))/(2*(t-1))"],
    jlist:=[-33553218345094943279/600372506250000,4913/1296,-254164210474783519/10497600000000],
    jmap:="((t^8-12*t^6+32*t^5-26*t^4+52*t^2-32*t+1)^3*(t^8+4*t^6+22*t^4-64*t^3+100*t^2-64*t+17)^3)/(16*(t-1)^8*(t^2-2*t+3)^4*(t^2+1)^8*(t^2+2*t-1)^4)">;
gl2tab["16B0-16a"]:=rec<g0gl2rec|
    label:="16B0-16a", genus:=0, sl2label:="16B0", gl2level:=16, sl2level:=16, index:=24, gl2id:=27739,
    gens:=[[3,0,0,11],[0,3,5,0],[1,2,2,5],[1,0,0,5],[1,8,0,3]],
    msubs:=[],
    msups:=["8B0-8a"],
    msupmaps:=["t^2/2"],
    jlist:=[-1156798321859375/43046721,-68669157375/65536,-4485893258000/43046721],
    jmap:="-16*(t^8-16)^3/t^16",
    twin:="16B0-16c", note:="distinguished via subgroup 27148 of 27745 for basechange of -16581375/256 to Q(sqrt(-31))">;
gl2tab["16B0-16b"]:=rec<g0gl2rec|
    label:="16B0-16b", genus:=0, sl2label:="16B0", gl2level:=16, sl2level:=16, index:=24, gl2id:=27734,
    gens:=[[3,0,0,11],[0,3,5,0],[1,2,2,5],[1,4,0,5],[5,2,0,3]],
    msubs:=[],
    msups:=["8B0-8d"],
    msupmaps:=["t^2/2"],
    jlist:=[4913,284500822033/6561,68769820673/65536],
    jmap:="(16*(t^8+16)^3)/(t^16)",
    twin:="16B0-16d", note:="distinguished by subgroup 27138 of 27733 for basechange of j=16974593 to Q(sqrt(10))">;
gl2tab["16B0-16c"]:=rec<g0gl2rec|
    label:="16B0-16c", genus:=0, sl2label:="16B0", gl2level:=16, sl2level:=16, index:=24, gl2id:=27745,
    gens:=[[3,0,0,11],[0,3,5,0],[1,2,2,5],[3,0,0,5],[1,8,0,3]],
    msubs:=[],
    msups:=["8B0-8a"],
    msupmaps:=["t^2"],
    jlist:=[-281462092005375/16777216,-72268906496000/43046721,-16581375/256],
    jmap:="(-256*(t^8 -1)^3)/t^16",
    twin:="16B0-16a", note:="distinguished via subgroup 27148 of 27745 for basechange of -16581375/256 to Q(sqrt(-31))">;
gl2tab["16B0-16d"]:=rec<g0gl2rec|
    label:="16B0-16d", genus:=0, sl2label:="16B0", gl2level:=16, sl2level:=16, index:=24, gl2id:=27733,
    gens:=[[3,0,0,11],[0,3,5,0],[1,2,2,5],[3,6,0,5],[3,4,0,7]],
    msubs:=[],
    msups:=["8B0-8d"],
    msupmaps:=["t^2"],
    jlist:=[16974593,72335026259968/43046721,316796140513/43046721],
    jmap:="(256*(t^8+1)^3)/(t^16)",
    twin:="16B0-16b", note:="distinguished by subgroup 27138 of 27733 for basechange of j=16974593 to Q(sqrt(10))">;
gl2tab["16C0-16a"]:=rec<g0gl2rec|
    label:="16C0-16a", genus:=0, sl2label:="16C0", gl2level:=16, sl2level:=16, index:=24, gl2id:=27366,
    gens:=[[7,0,0,7],[3,8,0,11],[0,3,5,2],[1,2,0,3],[1,4,0,5]],
    msubs:=["32A0-32a","32A0-32c"],
    msups:=["8C0-8b"],
    msupmaps:=["t^2/2"],
    jlist:=[35937/17,82483294977/17,488001047617/7857],
    jmap:="(t^8+16*t^4+16)^3/(t^4*(t^4+16))">;
gl2tab["16C0-16b"]:=rec<g0gl2rec|
    label:="16C0-16b", genus:=0, sl2label:="16C0", gl2level:=16, sl2level:=16, index:=24, gl2id:=27367,
    gens:=[[7,0,0,7],[3,8,0,11],[0,3,5,2],[1,2,0,3],[5,4,0,1]],
    msubs:=[],
    msups:=["8C0-8b"],
    msupmaps:=["t^2"],
    jlist:=[55296/5,132304644/5,33076161/16640],
    jmap:="256*(t^8+4*t^4+1)^3/(t^4*(t^4+4))">;
gl2tab["16C0-16c"]:=rec<g0gl2rec|
    label:="16C0-16c", genus:=0, sl2label:="16C0", gl2level:=16, sl2level:=16, index:=24, gl2id:=27343,
    gens:=[[7,0,0,7],[3,8,0,11],[0,3,5,2],[1,4,0,5],[5,2,0,3]],
    msubs:=["16H0-16e","16H0-16h","16H0-16i","16H0-16c","16H0-16a","16H0-16b"],
    msups:=["8C0-8d"],
    msupmaps:=["2*t^2"],
    jlist:=[62140690757632/6237,-17418812548/3314597517,-268498407453697/17163091968],
    jmap:="256*(t^8-4*t^4+1)^3/(t^4*(t^4-4))">;
gl2tab["16C0-16d"]:=rec<g0gl2rec|
    label:="16C0-16d", genus:=0, sl2label:="16C0", gl2level:=16, sl2level:=16, index:=24, gl2id:=27342,
    gens:=[[7,0,0,7],[3,8,0,11],[0,3,5,2],[5,4,0,1],[1,6,0,3]],
    msubs:=["16H0-16k","16H0-16g","16H0-16j","16H0-16f","16H0-16d","16H0-16l","32A0-32d","32A0-32b"],
    msups:=["8C0-8d"],
    msupmaps:=["t^2"],
    jlist:=[147281603041/5265,1023887723039/2798036865,-1/15],
    jmap:="(t^8-16*t^4+16)^3/(t^4*(t^4-16))">;
gl2tab["16D0-16a"]:=rec<g0gl2rec|
    label:="16D0-16a", genus:=0, sl2label:="16D0", gl2level:=16, sl2level:=16, index:=24, gl2id:=27393,
    gens:=[[7,0,0,7],[3,0,0,11],[0,3,5,2],[1,4,0,5],[5,2,0,3]],
    msubs:=["16G0-16b","16G0-16d","16G0-16g","16G0-16f","16H0-16k","16H0-16j","16H0-16c","16H0-16a"],
    msups:=["8C0-8d"],
    msupmaps:=["(t^2-4)"],
    jlist:=[103823/63,23862997439/457113600,221115865823/664731648],
    jmap:="(t^8-16*t^6+80*t^4-128*t^2+16)^3/(t^2*(t^2-4)^2*(t^2-8))">;
gl2tab["16D0-16b"]:=rec<g0gl2rec|
    label:="16D0-16b", genus:=0, sl2label:="16D0", gl2level:=16, sl2level:=16, index:=24, gl2id:=27352,
    gens:=[[7,0,0,7],[3,0,0,11],[0,3,5,2],[3,2,0,1],[1,4,0,5]],
    msubs:=["16G0-16b","16G0-16e","16H0-16g","16H0-16b"],
    msups:=["8C0-8d"],
    msupmaps:=["(t^2+4)"],
    jlist:=[17319700013617/25857,2533811507137/625016832,15897679904620804/2475],
    jmap:="(t^8+16*t^6+80*t^4+128*t^2+16)^3/(t^2*(t^2+4)^2*(t^2+8))",
    twin:="16D0-16d", note:="distinguished by subgroup 25885 of 27392 for basechange of 24918016/45 to Q(sqrt(-7))">;
gl2tab["16D0-16c"]:=rec<g0gl2rec|
    label:="16D0-16c", genus:=0, sl2label:="16D0", gl2level:=16, sl2level:=16, index:=24, gl2id:=27353,
    gens:=[[7,0,0,7],[3,0,0,11],[0,3,5,2],[3,2,0,1],[5,2,0,3]],
    msubs:=["16G0-16c","16G0-16d","16G0-16g","16G0-16e","16H0-16e","16H0-16i","16H0-16f","16H0-16d"],
    msups:=["8C0-8d"],
    msupmaps:=["2*(t^2-2)"],
    jlist:=[2748251600896/2205,53297461115137/147,109902239/188160],
    jmap:="256*(t^8-8*t^6+20*t^4-16*t^2+1)^3/((t^2-4)*t^2*(t^2-2)^2)">;
gl2tab["16D0-16d"]:=rec<g0gl2rec|
    label:="16D0-16d", genus:=0, sl2label:="16D0", gl2level:=16, sl2level:=16, index:=24, gl2id:=27392,
    gens:=[[7,0,0,7],[3,0,0,11],[0,3,5,2],[3,6,0,5],[3,4,0,7]],
    msubs:=["16G0-16c","16G0-16f","16H0-16h","16H0-16l"],
    msups:=["8C0-8d"],
    msupmaps:=["2*(t^2+2)"],
    jlist:=[24918016/45,908031902324522977/161726530797,6812873765474836663297/74052],
    jmap:="256*(t^8+8*t^6+20*t^4+16*t^2+1)^3/((t^2+4)*t^2*(t^2+2)^2)",
    twin:="16D0-16b", note:="distinguished by subgroup 25885 of 27392 for basechange of 24918016/45 to Q(sqrt(-7))">;
gl2tab["16E0-16a"]:=rec<g0gl2rec|
    label:="16E0-16a", genus:=0, sl2label:="16E0", gl2level:=16, sl2level:=16, index:=24, gl2id:=27533,
    gens:=[[0,3,5,8],[2,1,3,10],[1,0,0,3],[1,0,0,5]],
    msubs:=["16G0-16j","16G0-16i"],
    msups:=["8D0-8a"],
    msupmaps:=["(t^2+4)/2"],
    jlist:=[474552000/49,17384043092625/25921,334071914262529617/693889],
    jmap:="(t^4+8*t^2+4)^3*(t^2+6)^3*(t^2+2)^3/(t^4+8*t^2+8)^2",
    twin:="16E0-16d", note:="distinguished via subgroup 26852 of 27531 for basechange of 28311552/49 to Q(sqrt(7))">;
gl2tab["16E0-16b"]:=rec<g0gl2rec|
    label:="16E0-16b", genus:=0, sl2label:="16E0", gl2level:=16, sl2level:=16, index:=24, gl2id:=27530,
    gens:=[[0,3,5,8],[2,1,3,10],[1,0,0,3],[1,8,0,5]],
    msubs:=["16G0-16h","16G0-16k","16G0-16l","16G0-16i"],
    msups:=["8D0-8a"],
    msupmaps:=["(t^2-2)"],
    jlist:=[350402625/246016,2755733225472/2209,35937/73984],
    jmap:="256*(t^2-1)^3*(t^2-3)^3*(t^4-4*t^2+1)^3/(t^4-4*t^2+2)^2",
    twin:="16E0-16c", note:="distinguished by subgroup H26838 of H27530 for basechange of 350402625/246016 to Q(sqrt(31)">;
gl2tab["16E0-16c"]:=rec<g0gl2rec|
    label:="16E0-16c", genus:=0, sl2label:="16E0", gl2level:=16, sl2level:=16, index:=24, gl2id:=27532,
    gens:=[[0,3,5,8],[2,1,3,10],[1,0,0,5],[1,8,0,3]],
    msubs:=["16G0-16j","16G0-16k","16G0-16l","16G0-16a"],
    msups:=["8D0-8a"],
    msupmaps:=["(t^2-4)/2"],
    jlist:=[-6719171103/144769024,9869198625/409010176,149975199297/616628224],
    jmap:="(t^4-8*t^2+4)^3*(t^2-6)^3*(t^2-2)^3/(t^4-8*t^2+8)^2",
    twin:="16E0-16b", note:="distinguished by subgroup H26838 of H27530 for basechange of 350402625/246016 to Q(sqrt(31) ">;
gl2tab["16E0-16d"]:=rec<g0gl2rec|
    label:="16E0-16d", genus:=0, sl2label:="16E0", gl2level:=16, sl2level:=16, index:=24, gl2id:=27531,
    gens:=[[0,3,5,8],[2,1,3,10],[3,0,0,5],[1,8,0,3]],
    msubs:=["16G0-16h","16G0-16a"],
    msups:=["8D0-8a"],
    msupmaps:=["(t^2+2)"],
    jlist:=[28311552/49,71334995501631168/25921,726824779776000/14161],
    jmap:="256*(t^2+1)^3*(t^2+3)^3*(t^4+4*t^2+1)^3/(t^4+4*t^2+2)^2",
    twin:="16E0-16a", note:="distinguished via subgroup 26852 of 27531 for basechange of 28311552/49 to Q(sqrt(7))">;
gl2tab["16F0-32a"]:=rec<g0gl2rec|
    label:="16F0-32a", genus:=0, sl2label:="16F0", gl2level:=32, sl2level:=16, index:=32, gl2id:=191262,
    gens:=[[3,4,0,11],[6,3,7,9],[3,3,0,5],[0,3,1,0]],
    msubs:=[],
    msups:=["8E0-16b"],
    msupmaps:=["(-(t^2+2))/(2*t)"],
    jlist:=[-26013890880,-32690124020808000,-43609375333651663944000],
    jmap:="64*(t^8-48*t^7-264*t^6-672*t^5-1000*t^4-1344*t^3-1056*t^2-384*t+16)*(3*t^8+48*t^7+232*t^6+672*t^5+1096*t^4+1344*t^3+928*t^2+384*t+48)^3/(t^2-2)^16">;
gl2tab["16F0-32b"]:=rec<g0gl2rec|
    label:="16F0-32b", genus:=0, sl2label:="16F0", gl2level:=32, sl2level:=16, index:=32, gl2id:=191263,
    gens:=[[3,4,0,11],[6,3,7,9],[5,5,0,3],[0,3,1,0]],
    msubs:=[],
    msups:=["8E0-16b"],
    msupmaps:=["((t^2-4*t+2))/((t^2-2*t+2))"],
    jlist:=[-72000,-23203748160,-32800284428081472],
    jmap:="-64*(5*t^8-48*t^7+216*t^6-672*t^5+1144*t^4-1344*t^3+864*t^2-384*t+80)^3*(9*t^8-48*t^7+184*t^6-672*t^5+1240*t^4-1344*t^3+736*t^2-384*t+144)/(t^2-2)^16">;
gl2tab["16G0-16a"]:=rec<g0gl2rec|
    label:="16G0-16a", genus:=0, sl2label:="16G0", gl2level:=16, sl2level:=16, index:=48, gl2id:=26380,
    gens:=[[1,2,0,1],[7,0,0,7],[3,0,8,11],[1,3,2,3],[3,2,2,1]],
    msubs:=[],
    msups:=["8G0-8i","16E0-16c","16E0-16d"],
    msupmaps:=["(2*(t^2+1))/((t^2+2*t-1))","(4*(t^2+1))/((t^2-2*t-1))","(2*(t^2+2*t-1))/((t^2-2*t-1))"],
    jlist:=[98611128000/289,1075958317399893472974528/260732313309792175201,232289360927629193288811112128/384199201],
    jmap:="64*(3*t^4+12*t^3+14*t^2+4*t+11)^3*(11*t^4-4*t^3+14*t^2-12*t+3)^3*(5*t^4+12*t^3+10*t^2-12*t+5)^3*(7*t^4+4*t^3+14*t^2-4*t+7)^3/((t^2-2*t-1)^16*(17*t^8+56*t^7+84*t^6+56*t^5+70*t^4-56*t^3+84*t^2-56*t+17)^2)",
    twin:="16G0-16i", note:="distinguished via subgroup 24154 of 26380 for basechange of j=98611128000/289 to Q(sqrt(17)">;
gl2tab["16G0-16b"]:=rec<g0gl2rec|
    label:="16G0-16b", genus:=0, sl2label:="16G0", gl2level:=16, sl2level:=16, index:=48, gl2id:=26024,
    gens:=[[1,2,0,1],[7,0,0,7],[3,0,8,11],[3,0,0,1],[1,0,0,5]],
    msubs:=[],
    msups:=["8G0-8a","16D0-16a","16D0-16b"],
    msupmaps:=["t^2/2","((t^2+2))/(t)","((t^2-2))/(t)"],
    jlist:=[13997521/225,4718909406724749250561/1098974822400,79185713292934220826001/1843993463645025],
    jmap:="(t^16-16*t^8+256)^3/(t^16*(t^8-16)^2)">;
gl2tab["16G0-16c"]:=rec<g0gl2rec|
    label:="16G0-16c", genus:=0, sl2label:="16G0", gl2level:=16, sl2level:=16, index:=48, gl2id:=26026,
    gens:=[[1,2,0,1],[7,0,0,7],[3,0,8,11],[3,0,0,1],[5,0,0,1]],
    msubs:=[],
    msups:=["8G0-8a","16D0-16c","16D0-16d"],
    msupmaps:=["t^2","((t^2+1))/(t)","((t^2-1))/(t)"],
    jlist:=[278202094583041/16646400,79729981196639723693281/7236153800100,71125912466869080150721/438076768276742400],
    jmap:="256*(t^16-t^8+1)^3/(t^16*(t^8-1)^2)">;
gl2tab["16G0-16d"]:=rec<g0gl2rec|
    label:="16G0-16d", genus:=0, sl2label:="16G0", gl2level:=16, sl2level:=16, index:=48, gl2id:=26025,
    gens:=[[1,2,0,1],[7,0,0,7],[3,0,8,11],[3,0,0,1],[5,1,0,1]],
    msubs:=[],
    msups:=["8G0-8c","16D0-16a","16D0-16c"],
    msupmaps:=["((t^2-2))/(2*t)","(8*t)/((t^2+2))","(2*(t^2-2))/((t^2+2))"],
    jlist:=[6359387729183/4218578658,-2770540998624539614657/209924951154647363208,-855073332201294509246497/21439133060285771735058],
    jmap:="-(t^16-496*t^14+14448*t^12-128576*t^10+410720*t^8-514304*t^6+231168*t^4-31744*t^2+256)^3/(2*t^2*(t^2-2)^2*(t^4-12*t^2+4)^2*(t^2+2)^16)">;
gl2tab["16G0-16e"]:=rec<g0gl2rec|
    label:="16G0-16e", genus:=0, sl2label:="16G0", gl2level:=16, sl2level:=16, index:=48, gl2id:=26117,
    gens:=[[1,2,0,1],[7,0,0,7],[3,0,8,11],[3,1,0,1],[1,1,0,5]],
    msubs:=[],
    msups:=["8G0-8g","16D0-16b","16D0-16c"],
    msupmaps:=["((t^2+2))/(2*t)","(8*t)/((t^2-2))","(2*(t^2+2))/((t^2-2))"],
    jlist:=[2361739090258884097/5202,9582009323749676066323377217/274979636207216389512,5577836661167692858329008206822496257/6927586632],
    jmap:="(t^16+496*t^14+14448*t^12+128576*t^10+410720*t^8+514304*t^6+231168*t^4+31744*t^2+256)^3/(2*t^2*(t^2+2)^2*(t^4+12*t^2+4)^2*(t^2-2)^16)">;
gl2tab["16G0-16f"]:=rec<g0gl2rec|
    label:="16G0-16f", genus:=0, sl2label:="16G0", gl2level:=16, sl2level:=16, index:=48, gl2id:=26115,
    gens:=[[1,2,0,1],[7,0,0,7],[3,0,8,11],[3,1,0,1],[1,1,4,1]],
    msubs:=[],
    msups:=["8G0-8g","16D0-16a","16D0-16d"],
    msupmaps:=["(2*(t^2+1))/((t^2+2*t-1))","(4*(t^2+1))/((t^2-2*t-1))","(2*(t^2+2*t-1))/((t^2-2*t-1))"],
    jlist:=[3065617154/9,7259042500647479362626220802/12006225,5592141049774548528002/2160971310288305025],
    jmap:="2*(1153*t^16+7664*t^15+23656*t^14+46256*t^13+61404*t^12+61040*t^11+49112*t^10+22448*t^9+24518*t^8-22448*t^7+49112*t^6-61040*t^5+61404*t^4-46256*t^3+23656*t^2-7664*t+1153)^3/((3*t^4+4*t^3+6*t^2-4*t+3)^2*(t^2+1)^2*(t^2+2*t-1)^2*(t^2-2*t-1)^16)">;
gl2tab["16G0-16g"]:=rec<g0gl2rec|
    label:="16G0-16g", genus:=0, sl2label:="16G0", gl2level:=16, sl2level:=16, index:=48, gl2id:=26118,
    gens:=[[1,2,0,1],[7,0,0,7],[3,0,8,11],[3,1,0,1],[5,0,0,1]],
    msubs:=[],
    msups:=["8G0-8f","16D0-16c","16D0-16a"],
    msupmaps:=["((t^2-1))/(2*t)","(2*(t^2-1))/((t^2+1))","(2*(t^2+2*t-1))/((t^2+1))"],
    jlist:=[226523624554079/269165039062500,14651516183052242700771495839/8480668142378708755560900,4837987390362436347081585367679/4540848316592979232425603600],
    jmap:=" -(t^16-248*t^14+3612*t^12-16072*t^10+25670*t^8-16072*t^6+3612*t^4-248*t^2+1)^3/(t^2*(t^2-1)^2*(t^4-6*t^2+1)^2*(t^2+1)^16)">;
gl2tab["16G0-16h"]:=rec<g0gl2rec|
    label:="16G0-16h", genus:=0, sl2label:="16G0", gl2level:=16, sl2level:=16, index:=48, gl2id:=26371,
    gens:=[[1,2,0,1],[7,0,0,7],[3,0,8,11],[3,2,2,1],[1,4,2,3]],
    msubs:=[],
    msups:=["8G0-8e","16E0-16b","16E0-16d"],
    msupmaps:=["t^2","((t^2+1))/(t)","((t^2-1))/(t)"],
    jlist:=[284799399232257/16908544,89866467234091764455617/512113976688017664,5107387340374277044235968/463396272742881],
    jmap:="256*(t^16+t^8+1)^3/(t^16*(t^8+1)^2)",
    twin:="16G0-16j", note:="distinguished using modular function">;
gl2tab["16G0-16i"]:=rec<g0gl2rec|
    label:="16G0-16i", genus:=0, sl2label:="16G0", gl2level:=16, sl2level:=16, index:=48, gl2id:=26379,
    gens:=[[1,2,0,1],[7,0,0,7],[3,0,8,11],[3,2,2,1],[3,3,4,5]],
    msubs:=[],
    msups:=["8G0-8i","16E0-16a","16E0-16b"],
    msupmaps:=["((t^2+2))/(2*t)","(8*t)/((t^2-2))","(2*(t^2+2))/((t^2-2))"],
    jlist:=[151151982786044856000/332929,623289557616980940477891000000/17790277948642415343169,574780229135151925480064856504000/172744022335651500143809],
    jmap:="64*(t^2+6)^3*(3*t^2+2)^3*(t^4+28*t^2+4)^3*(t^8+120*t^6+536*t^4+480*t^2+16)^3/((t^8+56*t^6+280*t^4+224*t^2+16)^2*(t^2-2)^16)",
    twin:="16G0-16a", note:="distinguished via subgroup 24154 of 26380 for basechange of j=98611128000/289 to Q(sqrt(17)">;
gl2tab["16G0-16j"]:=rec<g0gl2rec|
    label:="16G0-16j", genus:=0, sl2label:="16G0", gl2level:=16, sl2level:=16, index:=48, gl2id:=26372,
    gens:=[[1,2,0,1],[7,0,0,7],[3,0,8,11],[3,4,2,1],[1,2,4,5]],
    msubs:=[],
    msups:=["8G0-8e","16E0-16c","16E0-16a"],
    msupmaps:=["t^2/2","((t^2+2))/(t)","((t^2-2))/(t)"],
    jlist:=[20346417/289,4725826936714463031297/1100048564224,651664594938207074936257/320398104200015314944],
    jmap:="(t^16+16*t^8+256)^3/(t^16*(t^8+16)^2)",
    twin:="16G0-16h", note:="distinguished using modular function">;
gl2tab["16G0-16k"]:=rec<g0gl2rec|
    label:="16G0-16k", genus:=0, sl2label:="16G0", gl2level:=16, sl2level:=16, index:=48, gl2id:=26375,
    gens:=[[1,2,0,1],[7,0,0,7],[3,0,8,11],[7,1,0,9],[1,2,4,5]],
    msubs:=[],
    msups:=["8G0-8k","16E0-16b","16E0-16c"],
    msupmaps:=["((t^2-1))/(2*t)","(2*(t^2-1))/((t^2+1))","(2*(t^2+2*t-1))/((t^2+1))"],
    jlist:=[23916847752678538944/42378082275390625,-34710066366231069481780867392/38009262133152415697761,-1662357953027175542664107579712/48834379052661233768265486721],
    jmap:="64*(t^4-14*t^2+1)^3*(3*t^4-10*t^2+3)^3*(t^8-60*t^6+134*t^4-60*t^2+1)^3/((t^8-28*t^6+70*t^4-28*t^2+1)^2*(t^2+1)^16)">;
gl2tab["16G0-16l"]:=rec<g0gl2rec|
    label:="16G0-16l", genus:=0, sl2label:="16G0", gl2level:=16, sl2level:=16, index:=48, gl2id:=26384,
    gens:=[[1,2,0,1],[7,0,0,7],[3,0,8,11],[7,1,0,9],[3,0,2,1]],
    msubs:=[],
    msups:=["8G0-8l","16E0-16c","16E0-16b"],
    msupmaps:=["((t^2-2))/(2*t)","(8*t)/((t^2+2))","(2*(t^2-2))/((t^2+2))"],
    jlist:=[-10105715528000/12440502369,64266163323377301853624000/66331246202975078618049,9188829450823189849443000000/8477628159949321703668129],
    jmap:="64*(t^2-6)^3*(3*t^2-2)^3*(t^4-28*t^2+4)^3*(t^8-120*t^6+536*t^4-480*t^2+16)^3/((t^8-56*t^6+280*t^4-224*t^2+16)^2*(t^2+2)^16)">;
gl2tab["16G0-32a"]:=rec<g0gl2rec|
    label:="16G0-32a", genus:=0, sl2label:="16G0", gl2level:=32, sl2level:=16, index:=48, gl2id:=190312,
    gens:=[[1,2,0,1],[15,0,0,15],[7,0,0,23],[3,0,8,11],[3,1,0,5],[5,2,2,5]],
    msubs:=[],
    msups:=["8G0-16a"],
    msupmaps:=["((1-2*t-t^2))/((t^2-2*t-1))"],
    jlist:=[128,-4103078904646815616/5566558837890625,169863435250346815616/113642730712890625],
    jmap:="128*(t^16+32*t^15+8*t^14-1120*t^13+28*t^12+8736*t^11+56*t^10-22880*t^9+70*t^8+22880*t^7+56*t^6-8736*t^5+28*t^4+1120*t^3+8*t^2-32*t+1)^3/((t^2+1)^16*(t^8+8*t^7-28*t^6-56*t^5+70*t^4+56*t^3-28*t^2-8*t+1)^2)">;
gl2tab["16H0-16a"]:=rec<g0gl2rec|
    label:="16H0-16a", genus:=0, sl2label:="16H0", gl2level:=16, sl2level:=16, index:=48, gl2id:=25924,
    gens:=[[7,0,0,7],[9,0,0,9],[0,3,5,2],[1,4,0,5],[1,2,0,7]],
    msubs:=[],
    msups:=["8I0-8a","16C0-16c","16D0-16a"],
    msupmaps:=["(4*t)/((t^2+2))","(4*t)/((t^2-2))","(2*(t^2+2))/((t^2-2))"],
    jlist:=[268498407453697/252,4738217997934888496063/2928751705237796928,13244420128496241770842177/29965867631164664892],
    jmap:="-(t^16-16*t^14-912*t^12+7744*t^10+42080*t^8+30976*t^6-14592*t^4-1024*t^2+256)^3/(4*t^4*(t^4-12*t^2+4)*(t^2+2)^2*(t^2-2)^16)",
    twin:="16H0-16e", note:="distinguished by subgroup 22044 of 25924 for minimal quadratic twist of 268498407453697/252">;
gl2tab["16H0-16b"]:=rec<g0gl2rec|
    label:="16H0-16b", genus:=0, sl2label:="16H0", gl2level:=16, sl2level:=16, index:=48, gl2id:=25798,
    gens:=[[7,0,0,7],[9,0,0,9],[0,3,5,2],[1,4,0,5],[1,6,0,3]],
    msubs:=[],
    msups:=["8I0-8a","16C0-16c","16D0-16b"],
    msupmaps:=["(2*(t^2+1))/((t^2-2*t-1))","(2*(t^2+1))/((t^2+2*t-1))","(2*(t^2-2*t-1))/((t^2+2*t-1))"],
    jlist:=[28756228/3,3678765970528905177604/2056287578994061875,3995202039648020399520004/1561875],
    jmap:="4*(193*t^16-496*t^15+616*t^14-2224*t^13+3804*t^12-4720*t^11+10712*t^10-2992*t^9+18758*t^8+2992*t^7+10712*t^6+4720*t^5+3804*t^4+2224*t^3+616*t^2+496*t+193)^3/((t^2+2*t+3)*(3*t^2-2*t+1)*(t^2-2*t-1)^2*(t^2+1)^4*(t^2+2*t-1)^16)">;
gl2tab["16H0-16c"]:=rec<g0gl2rec|
    label:="16H0-16c", genus:=0, sl2label:="16H0", gl2level:=16, sl2level:=16, index:=48, gl2id:=25904,
    gens:=[[7,0,0,7],[9,0,0,9],[0,3,5,2],[1,4,0,5],[5,2,0,3]],
    msubs:=[],
    msups:=["8I0-8b","16C0-16c","16D0-16a"],
    msupmaps:=["(4*t)/((t^2-2))","(4*t)/((t^2+2))","(2*(t^2-2))/((t^2+2))"],
    jlist:=[1276229915423/2927177028,108336823284545466698303/656651058283049191488,-239485193562495923623151588737/145553799980354715660575808],
    jmap:="-1/4*(t^16+16*t^14-912*t^12-7744*t^10+42080*t^8-30976*t^6-14592*t^4+1024*t^2+256)^3/(t^4*(t^2-2)^2*(t^2+2)^16*(t^4+12*t^2+4))">;
gl2tab["16H0-16d"]:=rec<g0gl2rec|
    label:="16H0-16d", genus:=0, sl2label:="16H0", gl2level:=16, sl2level:=16, index:=48, gl2id:=25799,
    gens:=[[7,0,0,7],[9,0,0,9],[0,3,5,2],[1,6,0,3],[1,2,0,7]],
    msubs:=[],
    msups:=["8I0-8a","16D0-16c","16C0-16d"],
    msupmaps:=["((t^2+2*t-1))/((t^2+1))","(2*(t^2+1))/((t^2-2*t-1))","(2*(t^2+2*t-1))/((t^2-2*t-1))"],
    jlist:=[783736670177727068275201/360150,-187778242790732059201/4984939585440150,1274090022584975661628188489514561/14072533302105480763470],
    jmap:="(t^16+240*t^15+2152*t^14+5040*t^13+4572*t^12-1680*t^11-3112*t^10-6480*t^9-6970*t^8+6480*t^7-3112*t^6+1680*t^5+4572*t^4-5040*t^3+2152*t^2-240*t+1)^3/(t*(t-1)*(t+1)*(t^2+1)^2*(t^2+2*t-1)^4*(t^2-2*t-1)^16)">;
gl2tab["16H0-16e"]:=rec<g0gl2rec|
    label:="16H0-16e", genus:=0, sl2label:="16H0", gl2level:=16, sl2level:=16, index:=48, gl2id:=25928,
    gens:=[[7,0,0,7],[9,0,0,9],[0,3,5,2],[3,2,0,1],[1,2,0,7]],
    msubs:=[],
    msups:=["16C0-16c","16D0-16c","8I0-8c"],
    msupmaps:=["((t^2-2))/(2*t)","((t^2+2))/(2*t)","((t^2+2))/((t^2-2))"],
    jlist:=[-7189057/16128,38331145780597164097/55468445663232,125177609053596564863/73635189229502208],
    jmap:="(t^16-16*t^14+48*t^12+64*t^10-160*t^8+256*t^6+768*t^4-1024*t^2+256)^3/(256*(t^4-12*t^2+4)*(t^2+2)^2*(t^2-2)^4*t^16)",
    twin:="16H0-16a", note:="distinguished by subgroup 22044 of 25924 for minimal quadratic twist of 268498407453697/252">;
gl2tab["16H0-16f"]:=rec<g0gl2rec|
    label:="16H0-16f", genus:=0, sl2label:="16H0", gl2level:=16, sl2level:=16, index:=48, gl2id:=25927,
    gens:=[[7,0,0,7],[9,0,0,9],[0,3,5,2],[3,2,0,1],[5,2,0,3]],
    msubs:=[],
    msups:=["8I0-8b","16D0-16c","16C0-16d"],
    msupmaps:=["((t^2-2))/(2*t)","(4*t)/((t^2+2))","(2*(t^2-2))/((t^2+2))"],
    jlist:=[-147281603041/215233605,1591934139020114746758719/1156766383092650262660,16748323164863581359610079/84398855572864120299165],
    jmap:="-(t^16-240*t^14+2160*t^12-6720*t^10+17504*t^8-26880*t^6+34560*t^4-15360*t^2+256)^3/(t^2*(t^4+4)*(t^2 - 2)^4*(t^2+2)^16)",
    twin:="16H0-16j", note:="distinguished by subgroup 22064 of 25927 for minimal quadratic twist of -147281603041/215233605">;
gl2tab["16H0-16g"]:=rec<g0gl2rec|
    label:="16H0-16g", genus:=0, sl2label:="16H0", gl2level:=16, sl2level:=16, index:=48, gl2id:=25926,
    gens:=[[7,0,0,7],[9,0,0,9],[0,3,5,2],[3,2,0,1],[5,4,0,1]],
    msubs:=[],
    msups:=["16C0-16d","16D0-16b","8I0-8c"],
    msupmaps:=["((t^2+1))/(t)","((t^2-1))/(t)","((t^2-1))/((t^2+1))"],
    jlist:=[161572377633716256481/914742821250,12931706531187361/15114240000,2080715524939479717643838309281/7609177551269531250],
    jmap:="(t^16+8*t^14+12*t^12-8*t^10-10*t^8-8*t^6+12*t^4+8*t^2+1)^3/((t^4+6*t^2+1)*(t^2-1)^2*(t^2+1)^4*t^16)",
    twin:="16H0-16l", note:="distinguished by subgroup 22019 of 25923 for minimal quadratic twist of 1114544804970241/405">;
gl2tab["16H0-16h"]:=rec<g0gl2rec|
    label:="16H0-16h", genus:=0, sl2label:="16H0", gl2level:=16, sl2level:=16, index:=48, gl2id:=25903,
    gens:=[[7,0,0,7],[9,0,0,9],[0,3,5,2],[3,4,0,7],[5,6,0,7]],
    msubs:=[],
    msups:=["16C0-16c","16D0-16d","8I0-8c"],
    msupmaps:=["((t^2+2))/(2*t)","((t^2-2))/(2*t)","((t^2-2))/((t^2+2))"],
    jlist:=[4354703137/352512,48203876126732774648257/609487014592512,109334192821307690753575297/34804185132806399066112],
    jmap:="(t^16+16*t^14+48*t^12-64*t^10-160*t^8-256*t^6+768*t^4+1024*t^2+256)^3/(256*(t^4+12*t^2+4)*(t^2-2)^2*(t^2+2)^4*t^16)">;
gl2tab["16H0-16i"]:=rec<g0gl2rec|
    label:="16H0-16i", genus:=0, sl2label:="16H0", gl2level:=16, sl2level:=16, index:=48, gl2id:=25800,
    gens:=[[7,0,0,7],[9,0,0,9],[0,3,5,2],[5,2,0,3],[1,6,0,3]],
    msubs:=[],
    msups:=["16C0-16c","16D0-16c","8I0-8d"],
    msupmaps:=["((t^2+2*t-1))/((t^2+1))","((t^2-2*t-1))/((t^2+1))","((t^2-2*t-1))/((t^2+2*t-1))"],
    jlist:=[2048/3,-915553975060166656/36269989013671875,-14967807005098080256/381317138671875],
    jmap:="2^11*(t^16+8*t^15-8*t^14-88*t^13-132*t^12+200*t^11+584*t^10+296*t^9-634*t^8-296*t^7+584*t^6-200*t^5-132*t^4+88*t^3-8*t^2-8*t+1)^3/((t^2+2*t+3)*(3*t^2-2*t+1)*(t^2-2*t-1)^2*(t^2+2*t-1)^4*(t^2+1)^16)">;
gl2tab["16H0-16j"]:=rec<g0gl2rec|
    label:="16H0-16j", genus:=0, sl2label:="16H0", gl2level:=16, sl2level:=16, index:=48, gl2id:=25922,
    gens:=[[7,0,0,7],[9,0,0,9],[0,3,5,2],[5,2,0,3],[5,4,0,1]],
    msubs:=[],
    msups:=["8I0-8d","16D0-16a","16C0-16d"],
    msupmaps:=["(2*t)/((t^2-1))","(4*t)/((t^2+1))","(2*(t^2-1))/((t^2+1))"],
    jlist:=[31077313442863199/420227050781250,1407936942337442399/900878906250000,-154310397026165916426315361/726135874771145001491250],
    jmap:="-2*(t^16-120*t^14+540*t^12-840*t^10+1094*t^8-840*t^6+540*t^4-120*t^2+1)^3/(t^2*(t^2-1)^4*(t^2+1)^16*(t^4+1))",
    twin:="16H0-16f", note:="distinguished by subgroup 22064 of 25927 for minimal quadratic twist of -147281603041/215233605">;
gl2tab["16H0-16k"]:=rec<g0gl2rec|
    label:="16H0-16k", genus:=0, sl2label:="16H0", gl2level:=16, sl2level:=16, index:=48, gl2id:=25902,
    gens:=[[7,0,0,7],[9,0,0,9],[0,3,5,2],[5,4,0,1],[1,2,0,7]],
    msubs:=[],
    msups:=["16C0-16d","16D0-16a","8I0-8c"],
    msupmaps:=["((t^2-1))/(t)","((t^2+1))/(t)","((t^2+1))/((t^2-1))"],
    jlist:=[1023887723039/928972800,378499465220294881/120530818800,-2926956820564562516641/35459588343029760000],
    jmap:="(t^16-8*t^14+12*t^12+8*t^10-10*t^8+8*t^6+12*t^4-8*t^2+1)^3/((t^4-6*t^2+1)*(t^2+1)^2*(t^2-1)^4*t^16)">;
gl2tab["16H0-16l"]:=rec<g0gl2rec|
    label:="16H0-16l", genus:=0, sl2label:="16H0", gl2level:=16, sl2level:=16, index:=48, gl2id:=25923,
    gens:=[[7,0,0,7],[9,0,0,9],[0,3,5,2],[7,2,0,5],[7,4,0,3]],
    msubs:=[],
    msups:=["8I0-8a","16D0-16d","16C0-16d"],
    msupmaps:=["((t^2+2))/(2*t)","(4*t)/((t^2-2))","(2*(t^2+2))/((t^2-2))"],
    jlist:=[1114544804970241/405,86623684689189325642735681/56690726941459561860,23715554832417233918431091521/372220952399189104365],
    jmap:="(t^16+240*t^14+2160*t^12+6720*t^10+17504*t^8+26880*t^6+34560*t^4+15360*t^2+256)^3/(t^2*(t^4+4)*(t^2 + 2)^4*(t^2-2)^16)",
    twin:="16H0-16g", note:="distinguished by subgroup 22019 of 25923 for minimal quadratic twist of 1114544804970241/405">;
gl2tab["32A0-32a"]:=rec<g0gl2rec|
    label:="32A0-32a", genus:=0, sl2label:="32A0", gl2level:=32, sl2level:=32, index:=48, gl2id:=189737,
    gens:=[[3,8,0,11],[5,8,0,13],[0,7,9,2],[1,4,0,5],[5,6,0,3]],
    msubs:=[],
    msups:=["16C0-16a"],
    msupmaps:=["(2)/(t^2)"],
    jlist:=[82483294977/16842752,1166488473124745217/4112,89497170846156330092737/2931185221632],
    jmap:="16*(t^16+16*t^8+16)^3/(t^32*(t^8+1))",
    twin:="32A0-32c", note:="distinguished by subgroup 184757 of 189737 for minimal quadratic twist of j=82483294977/16842752">;
gl2tab["32A0-32b"]:=rec<g0gl2rec|
    label:="32A0-32b", genus:=0, sl2label:="32A0", gl2level:=32, sl2level:=32, index:=48, gl2id:=189589,
    gens:=[[3,8,0,11],[5,8,0,13],[0,7,9,2],[5,2,0,3],[5,4,0,1]],
    msubs:=[],
    msups:=["16C0-16d"],
    msupmaps:=["t^2"],
    jlist:=[-1/15,56667352321/15,-1139466686381936641/17587891077120],
    jmap:="(t^16-16*t^8+16)^3/(t^8*(t^8-16))">;
gl2tab["32A0-32c"]:=rec<g0gl2rec|
    label:="32A0-32c", genus:=0, sl2label:="32A0", gl2level:=32, sl2level:=32, index:=48, gl2id:=189738,
    gens:=[[3,8,0,11],[5,8,0,13],[0,7,9,2],[7,2,0,1],[9,2,0,3]],
    msubs:=[],
    msups:=["16C0-16a"],
    msupmaps:=["t^2"],
    jlist:=[35937/17,82483294977/17,1166488473124745217/17596481011712],
    jmap:="(t^16+16*t^8+16)^3/(t^8*(t^8+16))",
    twin:="32A0-32a", note:="distinguished by subgroup 184757 of 189737 for minimal quadratic twist of j=82483294977/16842752">;
gl2tab["32A0-32d"]:=rec<g0gl2rec|
    label:="32A0-32d", genus:=0, sl2label:="32A0", gl2level:=32, sl2level:=32, index:=48, gl2id:=189588,
    gens:=[[3,8,0,11],[5,8,0,13],[0,7,9,2],[7,2,0,5],[7,4,0,3]],
    msubs:=[],
    msups:=["16C0-16d"],
    msupmaps:=["(2)/(t^2)"],
    jlist:=[-56667352321/16711680,1139466686381936641/4080,326573981641149886485204481/2690010],
    jmap:="-16*(t^16-16*t^8+16)^3/(t^32*(t^8-1))">;
gl2tab["3A0-3a"]:=rec<g0gl2rec|
    label:="3A0-3a", genus:=0, sl2label:="3A0", gl2level:=3, sl2level:=3, index:=3, gl2id:=13,
    gens:=[[0,1,2,0],[1,1,1,2],[1,0,0,2]],
    msubs:=["3C0-3a","9A0-9a","9G0-9a"],
    msups:=["1A0-1a"],
    msupmaps:=["t^3"],
    jlist:=[-110592/125,13824/1331,-27/8],
    jmap:="t^3">;
gl2tab["3B0-3a"]:=rec<g0gl2rec|
    label:="3B0-3a", genus:=0, sl2label:="3B0", gl2level:=3, sl2level:=3, index:=4, gl2id:=9,
    gens:=[[0,1,2,1],[1,2,0,2]],
    msubs:=["3D0-3a","9B0-9a","9C0-9a"],
    msups:=["1A0-1a"],
    msupmaps:=["((t+3)^3*(t+27))/t"],
    jlist:=[-121945/32,46969655/32768,-25/2],
    jmap:="((t+3)^3*(t+27))/t">;
gl2tab["3C0-3a"]:=rec<g0gl2rec|
    label:="3C0-3a", genus:=0, sl2label:="3C0", gl2level:=3, sl2level:=3, index:=6, gl2id:=10,
    gens:=[[0,1,2,0],[1,0,0,2]],
    msubs:=["3D0-3a","9D0-9a","9E0-9a"],
    msups:=["3A0-3a"],
    msupmaps:=["((t-9)*(t+3))/(t)"],
    jlist:=[1331/8,-1680914269/32768,3723875/1728],
    jmap:="(t-9)^3*(t+3)^3/t^3">;
gl2tab["3D0-3a"]:=rec<g0gl2rec|
    label:="3D0-3a", genus:=0, sl2label:="3D0", gl2level:=3, sl2level:=3, index:=12, gl2id:=7,
    gens:=[[2,0,0,2],[1,0,0,2]],
    msubs:=["9H0-9c","9H0-9b","9H0-9a"],
    msups:=["3B0-3a","3C0-3a"],
    msupmaps:=["(729)/((t^3-27))","(-27*(t-3))/((t^2+3*t+9))"],
    jlist:=[9938375/21952,4956477625/941192,71991296/42875],
    jmap:=" t^3*(t^3+216)^3/(t^3-27)^3">;
gl2tab["9A0-9a"]:=rec<g0gl2rec|
    label:="9A0-9a", genus:=0, sl2label:="9A0", gl2level:=9, sl2level:=9, index:=9, gl2id:=319,
    gens:=[[0,2,4,0],[1,1,4,5],[1,0,0,2]],
    msubs:=["9D0-9a"],
    msups:=["3A0-3a"],
    msupmaps:=["(t^3+9*t-6)"],
    jlist:=[-216,110592,-21024576],
    jmap:="(t^3+9*t-6)^3">;
gl2tab["9B0-9a"]:=rec<g0gl2rec|
    label:="9B0-9a", genus:=0, sl2label:="9B0", gl2level:=9, sl2level:=9, index:=12, gl2id:=292,
    gens:=[[1,1,0,1],[2,0,0,5],[1,0,0,2]],
    msubs:=["9I0-9a","9I0-9c","9I0-9b","27A0-27a"],
    msups:=["3B0-3a"],
    msupmaps:=["t*(t^2+9*t+27)"],
    jlist:=[-15625/28,128787625/98,-548347731625/1835008],
    jmap:="(t+3)^3*(t^3+9*t^2+27*t+3)^3/(t*(t^2+9*t+27))">;
gl2tab["9C0-9a"]:=rec<g0gl2rec|
    label:="9C0-9a", genus:=0, sl2label:="9C0", gl2level:=9, sl2level:=9, index:=12, gl2id:=299,
    gens:=[[2,0,0,5],[4,2,3,4],[1,0,0,2]],
    msubs:=["9J0-9b","9J0-9a","9J0-9c"],
    msups:=["3B0-3a"],
    msupmaps:=["t^3"],
    jlist:=[1792,406749952,-208],
    jmap:="(t+3)*(t^2-3*t+9)*(t^3+3)^3/t^3">;
gl2tab["9D0-9a"]:=rec<g0gl2rec|
    label:="9D0-9a", genus:=0, sl2label:="9D0", gl2level:=9, sl2level:=9, index:=18, gl2id:=305,
    gens:=[[2,0,0,5],[1,3,3,1],[0,2,4,0],[1,0,0,2]],
    msubs:=[],
    msups:=["3C0-3a","9A0-9a"],
    msupmaps:=["(-27)/(t^3)","((t^2-3))/(t)"],
    jlist:=[-1331/512,-614125/512,7437713408000/19683],
    jmap:="((t^3-9)*(t^3+3)/t^3)^3">;
gl2tab["9E0-9a"]:=rec<g0gl2rec|
    label:="9E0-9a", genus:=0, sl2label:="9E0", gl2level:=9, sl2level:=9, index:=18, gl2id:=301,
    gens:=[[1,3,0,1],[2,1,1,1],[4,2,0,5]],
    msubs:=["9H0-9c","9H0-9a"],
    msups:=["3C0-3a"],
    msupmaps:=["(-9*(t^3+3*t^2-9*t-3))/(8*t^3)"],
    jlist:=[4096000/4913,10648000/6859,-160989184000/357911],
    jmap:="3^6/2^9*(t-1)^3*(t+1)^3*(3*t+1)^3*(5*t^3-9*t^2+27*t+9)^3/(t^9*(t^3+3*t^2-9*t-3)^3)">;
gl2tab["9F0-9a"]:=rec<g0gl2rec|
    label:="9F0-9a", genus:=0, sl2label:="9F0", gl2level:=9, sl2level:=9, index:=27, gl2id:=310,
    gens:=[[0,2,4,1],[4,3,5,4],[4,5,0,5]],
    msubs:=[],
    msups:=["1A0-1a"],
    msupmaps:=["3^7*(t^2-1)^3*(t^6+3*t^5+6*t^4+t^3-3*t^2+12*t+16)^3*(2*t^3+3*t^2-3*t-5)/(t^3-3*t-1)^9"],
    jlist:=[419904,-44789760,15786448344],
    jmap:="3^7*(t^2-1)^3*(t^6+3*t^5+6*t^4+t^3-3*t^2+12*t+16)^3*(2*t^3+3*t^2-3*t-5)/(t^3-3*t-1)^9">;
gl2tab["9G0-9a"]:=rec<g0gl2rec|
    label:="9G0-9a", genus:=0, sl2label:="9G0", gl2level:=9, sl2level:=9, index:=27, gl2id:=309,
    gens:=[[0,4,2,3],[5,1,1,4],[5,3,0,4]],
    msubs:=[],
    msups:=["3A0-3a"],
    msupmaps:=["((t^3-9*t-12)*(9-3*t^3)*(5*t^3+18*t^2+18*t+3))/(t^3+3*t^2-3)^3"],
    jlist:=[1728,287496,70143520960521/322687697779],
    jmap:="(t^3-9*t-12)^3*(3-t^3)^3*(15*t^3+54*t^2+54*t+9)^3/(t^3+3*t^2-3)^9">;
gl2tab["9H0-9a"]:=rec<g0gl2rec|
    label:="9H0-9a", genus:=0, sl2label:="9H0", gl2level:=9, sl2level:=9, index:=36, gl2id:=267,
    gens:=[[1,3,0,1],[5,0,3,2],[1,0,2,2]],
    msubs:=[],
    msups:=["3D0-3a","9E0-9a"],
    msupmaps:=["(3*(t^3+9))/(t^3)","(3*t)/((2*t^2-3*t+6))"],
    jlist:=[94196375/3511808,-89915392/6859,1404928000/50653],
    jmap:="(t^2-3*t+3)^3*(t^2+3)^3*(t^2+3*t+3)^3*(t^3+3)^3*(t^3+9)^3/(t^9*(t^6+9*t^3+27)^3)">;
gl2tab["9H0-9b"]:=rec<g0gl2rec|
    label:="9H0-9b", genus:=0, sl2label:="9H0", gl2level:=9, sl2level:=9, index:=36, gl2id:=259,
    gens:=[[1,3,0,1],[5,0,3,2],[2,1,0,1]],
    msubs:=[],
    msups:=["3D0-3a"],
    msupmaps:=["(3*(t^3+9*t^2-9*t-9))/((t^3-9*t^2-9*t+9))"],
    jlist:=[9261/8,-101566487155393/42823570577256,-59550644977653843/322828856000],
    jmap:="(t^3-3*t^2-9*t+3)^3*(t^3+9*t^2-9*t-9)^3*(t^6-18*t^5+171*t^4+180*t^3-297*t^2-162*t+189)^3/(8*(t^2-1)^3*(t^2+3)^9*(t^3-9*t^2-9*t+9)^3)">;
gl2tab["9H0-9c"]:=rec<g0gl2rec|
    label:="9H0-9c", genus:=0, sl2label:="9H0", gl2level:=9, sl2level:=9, index:=36, gl2id:=265,
    gens:=[[1,3,0,1],[5,0,3,2],[4,2,0,5]],
    msubs:=[],
    msups:=["9E0-9a","3D0-3a"],
    msupmaps:=["(-(t^2+3))/((t^2+8*t+3))","(-6*(t-3)*t*(t+3))/((t^3+9*t^2-9*t-9))"],
    jlist:=[31363160518656000/198257271191,800129876206252032000/357353251272686591,18570887709290496000/14020010380589689],
    jmap:="2^12*3^6*t^3*(t^2-1)^3*(t^2-9)^3*(t^6+9*t^5+9*t^4-90*t^3+27*t^2+81*t+27)^3/((t^2+3)^9*(t^3+3*t^2-9*t-3)^3*(t^3+9*t^2-9*t-9)^3)">;
gl2tab["9I0-9a"]:=rec<g0gl2rec|
    label:="9I0-9a", genus:=0, sl2label:="9I0", gl2level:=9, sl2level:=9, index:=36, gl2id:=239,
    gens:=[[2,1,0,5],[1,2,3,2]],
    msubs:=[],
    msups:=["9B0-9a"],
    msupmaps:=["(-6*(t-3)*t*(t+3))/((t^3-3*t^2-9*t+3))"],
    jlist:=[-132651/2,-6150311179917589675873/244053849830826,-43581616978927713867/6860],
    jmap:="-27*(t^3+3*t^2-9*t-3)^3*(17*t^9+9*t^8-144*t^6-918*t^5+810*t^4-3672*t^3-648*t^2-4131*t-27)^3/(2*t*(t-3)*(t+3)*(t^2+3)^3*(t^3-3*t^2-9*t+3)^9)">;
gl2tab["9I0-9b"]:=rec<g0gl2rec|
    label:="9I0-9b", genus:=0, sl2label:="9I0", gl2level:=9, sl2level:=9, index:=36, gl2id:=243,
    gens:=[[2,1,0,5],[4,0,3,5]],
    msubs:=[],
    msups:=["9B0-9a"],
    msupmaps:=["(-3*(t^3+9*t^2-9*t-9))/((t^3+3*t^2-9*t-3))"],
    jlist:=[-12288000,22759502184972288000/5831,838870874148864000/40675641638471],
    jmap:="-2^12*3^6*(t-1)^3*(t+1)^3*(t^3-3)^3*(t^3+9*t+6)^3*(t^3+9*t^2-9*t+15)^3/((t^2+3)^3*(t^3+3*t^2-9*t-3)^9*(t^3+9*t^2-9*t-9))">;
gl2tab["9I0-9c"]:=rec<g0gl2rec|
    label:="9I0-9c", genus:=0, sl2label:="9I0", gl2level:=9, sl2level:=9, index:=36, gl2id:=245,
    gens:=[[2,2,0,5],[2,2,3,1]],
    msubs:=[],
    msups:=["9B0-9a"],
    msupmaps:=["((t^3-6*t^2+3*t+1))/((t-1)*t)"],
    jlist:=[-1167051/512,139233463487/58763045376,114115456478544693/175616000000000],
    jmap:="(t^3-3*t^2+1)^3*(t^9-9*t^8+27*t^7-48*t^6+54*t^5-45*t^4+27*t^3-9*t^2+1)^3/(t^9*(t-1)^9*(t^2-t+1)^3*(t^3-6*t^2+3*t+1))">;
gl2tab["9J0-9a"]:=rec<g0gl2rec|
    label:="9J0-9a", genus:=0, sl2label:="9J0", gl2level:=9, sl2level:=9, index:=36, gl2id:=275,
    gens:=[[1,3,0,1],[2,2,3,8],[1,2,0,2]],
    msubs:=[],
    msups:=["9C0-9a"],
    msupmaps:=["((t^3-3*t+1))/((t-1)*t)"],
    jlist:=[-1579268174113/10077696,1193859/512,-830790516673/25350000869376],
    jmap:="(t^2-t+1)^3*(t^3+3*t^2-6*t+1)*(t^9-9*t^7+6*t^6+18*t^5-9*t^4-27*t^3+27*t^2-9*t+1)^3/(t^9*(t-1)^9*(t^3-3*t+1)^3)">;
gl2tab["9J0-9b"]:=rec<g0gl2rec|
    label:="9J0-9b", genus:=0, sl2label:="9J0", gl2level:=9, sl2level:=9, index:=36, gl2id:=260,
    gens:=[[1,3,0,1],[2,2,3,8],[2,1,0,1]],
    msubs:=[],
    msups:=["9C0-9a"],
    msupmaps:=["(-18*(t^2-1))/((t^3-3*t^2-9*t+3))"],
    jlist:=[-843137281012581793/216,94531131/8,-2983318988753817404353/204919850586816],
    jmap:="-(t^2+3)^3*(t^3-9*t^2-9*t+9)*(t^9-9*t^8-1800*t^6-54*t^5+5022*t^4-216*t^3-5184*t^2-243*t+1971)^3/(8*(t-1)^3*(t+1)^3*(t^3-3*t^2-9*t+3)^9)">;
gl2tab["9J0-9c"]:=rec<g0gl2rec|
    label:="9J0-9c", genus:=0, sl2label:="9J0", gl2level:=9, sl2level:=9, index:=36, gl2id:=268,
    gens:=[[1,3,0,1],[5,2,3,5],[4,0,0,5]],
    msubs:=[],
    msups:=["9C0-9a"],
    msupmaps:=["(3*(t^3+3*t^2-9*t-3))/((t^3-3*t^2-9*t+3))"],
    jlist:=[54000,43573146510889416960/6859,60003797858807040/322687697779],
    jmap:="432*t*(t^2-9)*(t^2+3)^3*(t^3-9*t+12)^3*(t^3+9*t^2+27*t+3)^3*(5*t^3-9*t^2-9*t-3)^3/((t^3-3*t^2-9*t+3)^9*(t^3+3*t^2-9*t-3)^3)">;
gl2tab["27A0-27a"]:=rec<g0gl2rec|
    label:="27A0-27a", genus:=0, sl2label:="27A0", gl2level:=27, sl2level:=27, index:=36, gl2id:=2920,
    gens:=[[1,1,0,1],[2,1,9,5],[1,2,3,2]],
    msubs:=[],
    msups:=["9B0-9a"],
    msupmaps:=["t^3"],
    jlist:=[-413493625/152,-69173457625/2550136832,32768/19],
    jmap:="(t^3+3)^3*(t^9+9*t^6+27*t^3+3)^3/(t^3*(t^6+9*t^3+27))">;
gl2tab["5A0-5a"]:=rec<g0gl2rec|
    label:="5A0-5a", genus:=0, sl2label:="5A0", gl2level:=5, sl2level:=5, index:=5, gl2id:=45,
    gens:=[[2,1,0,3],[1,2,2,0],[1,1,0,2]],
    msubs:=["5E0-5a"],
    msups:=["1A0-1a"],
    msupmaps:=["t^3*(t^2+5*t+40)"],
    jlist:=[432,-316368,-36],
    jmap:="t^3*(t^2+5*t+40)">;
gl2tab["5B0-5a"]:=rec<g0gl2rec|
    label:="5B0-5a", genus:=0, sl2label:="5B0", gl2level:=5, sl2level:=5, index:=6, gl2id:=43,
    gens:=[[2,0,0,3],[1,0,1,1],[1,0,0,2]],
    msubs:=["5D0-5a","5D0-5b","5G0-5a","25A0-25a"],
    msups:=["1A0-1a"],
    msupmaps:=["(t^2+10*t+5)^3/t"],
    jlist:=[1331/8,-1680914269/32768,64/9],
    jmap:="(t^2+10*t+5)^3/t">;
gl2tab["5C0-5a"]:=rec<g0gl2rec|
    label:="5C0-5a", genus:=0, sl2label:="5C0", gl2level:=5, sl2level:=5, index:=10, gl2id:=40,
    gens:=[[3,1,0,2],[1,2,2,0],[2,2,2,1]],
    msubs:=["5G0-5b"],
    msups:=["1A0-1a"],
    msupmaps:=["8000*t^3*(t+1)*(t^2-5*t+10)^3/(t^2-5)^5"],
    jlist:=[1875,-10512288000/20511149,54775974000/20511149],
    jmap:="8000*t^3*(t+1)*(t^2-5*t+10)^3/(t^2-5)^5">;
gl2tab["5D0-5a"]:=rec<g0gl2rec|
    label:="5D0-5a", genus:=0, sl2label:="5D0", gl2level:=5, sl2level:=5, index:=12, gl2id:=37,
    gens:=[[4,0,1,4],[1,0,0,2]],
    msubs:=["5H0-5a","25B0-25b"],
    msups:=["5B0-5a"],
    msupmaps:=["(125*t)/((t^2-11*t-1))"],
    jlist:=[-52893159101157376/11,-9358714467168256/22284891,112763292123580561/1932612],
    jmap:="(t^4+228*t^3+494*t^2-228*t+1)^3/(t*(t^2-11*t-1)^5)">;
gl2tab["5D0-5b"]:=rec<g0gl2rec|
    label:="5D0-5b", genus:=0, sl2label:="5D0", gl2level:=5, sl2level:=5, index:=12, gl2id:=38,
    gens:=[[4,0,1,4],[2,0,0,1]],
    msubs:=["5H0-5a","25B0-25a"],
    msups:=["5B0-5a"],
    msupmaps:=["((t^2-11*t-1))/(t)"],
    jlist:=[-4096/11,841232384/1121931,10091699281/2737152],
    jmap:="(t^4-12*t^3+14*t^2+12*t+1)^3/(t^5*(t^2-11*t-1))">;
gl2tab["5E0-5a"]:=rec<g0gl2rec|
    label:="5E0-5a", genus:=0, sl2label:="5E0", gl2level:=5, sl2level:=5, index:=15, gl2id:=41,
    gens:=[[2,1,0,3],[2,0,2,3],[1,0,2,2]],
    msubs:=["5G0-5a","5G0-5b"],
    msups:=["5A0-5a"],
    msupmaps:=["((t+5)*(t^2-5))/((t^2+5*t+5))"],
    jlist:=[-4741632/2476099,-5000,-425920000/243],
    jmap:="(t+5)^3*(t^2-5)^3*(t^2+5*t+10)^3/(t^2+5*t+5)^5">;
gl2tab["5G0-5a"]:=rec<g0gl2rec|
    label:="5G0-5a", genus:=0, sl2label:="5G0", gl2level:=5, sl2level:=5, index:=30, gl2id:=33,
    gens:=[[3,1,0,2],[2,1,0,1]],
    msubs:=["5H0-5a"],
    msups:=["5E0-5a","5B0-5a"],
    msupmaps:=["((t^2+5))/(t)","(125)/(t*(t^4+5*t^3+15*t^2+25*t+25))"],
    jlist:=[17406197775296/1804229351,1511372858176/6956883693,-278969889446821/10762342913024],
    jmap:="(t^2+5*t+5)^3*(t^4+5*t^2+25)^3*(t^4+5*t^3+20*t^2+25*t+25)^3/(t^5*(t^4+5*t^3+15*t^2+25*t+25)^5)">;
gl2tab["5G0-5b"]:=rec<g0gl2rec|
    label:="5G0-5b", genus:=0, sl2label:="5G0", gl2level:=5, sl2level:=5, index:=30, gl2id:=35,
    gens:=[[3,1,0,2],[2,1,3,3]],
    msubs:=[],
    msups:=["5E0-5a","5C0-5a"],
    msupmaps:=["(-5*(t^2+4*t+5))/((t^2+5*t+5))","(-t*(t^2+5*t+10))/((t^3+5*t^2+10*t+10))"],
    jlist:=[3792752640000/28629151,552960000/161051,903919151185920000/78502725751],
    jmap:="625*t^3*(t^2+5*t+10)^3*(2*t^2+5*t+5)^3*(4*t^4+30*t^3+95*t^2+150*t+100)^3/((t^2+5*t+5)^5*(t^4+5*t^3+15*t^2+25*t+25)^5)">;
gl2tab["5H0-5a"]:=rec<g0gl2rec|
    label:="5H0-5a", genus:=0, sl2label:="5H0", gl2level:=5, sl2level:=5, index:=60, gl2id:=18,
    gens:=[[4,0,0,4],[2,0,0,1]],
    msubs:=[],
    msups:=["5D0-5a","5G0-5a","5D0-5b"],
    msupmaps:=["(-1)/(t^5)","(5*t)/((t^2-t-1))","(-(t^4-2*t^3+4*t^2-3*t+1))/(t*(t^4+3*t^3+4*t^2+2*t+1))"],
    jlist:=[-122023936/161051,6761990971/5153632,733441552889589371521/4352738523915232],
    jmap:="(t^20+228*t^15+494*t^10-228*t^5+1)^3/(t^5*(t^10-11*t^5-1)^5)">;
gl2tab["25A0-25a"]:=rec<g0gl2rec|
    label:="25A0-25a", genus:=0, sl2label:="25A0", gl2level:=25, sl2level:=25, index:=30, gl2id:=863,
    gens:=[[2,2,0,13],[4,1,3,1],[2,3,0,6]],
    msubs:=["25B0-25b","25B0-25a"],
    msups:=["5B0-5a"],
    msupmaps:=["(t-1)*(t^4+t^3+6*t^2+6*t+11)"],
    jlist:=[-1638541430081273024/26265946892733,190705121216/71,3358085834636749/382],
    jmap:="((t^10+10*t^8+35*t^6-12*t^5+50*t^4-60*t^3+25*t^2-60*t+16)^3)/((t-1)*(t^4+t^3+6*t^2+6*t+11))">;
gl2tab["25B0-25a"]:=rec<g0gl2rec|
    label:="25B0-25a", genus:=0, sl2label:="25B0", gl2level:=25, sl2level:=25, index:=60, gl2id:=813,
    gens:=[[9,10,0,14],[0,7,7,2],[2,8,0,1]],
    msubs:=[],
    msups:=["5D0-5b","25A0-25a"],
    msupmaps:=["-t^5","(1-t^2)/(t)"],
    jlist:=[-4096/11,-24680042791780949/369098752,300872095888141441/22515023872],
    jmap:="-(t^20+12*t^15+14*t^10-12*t^5+1)^3/(t^25*(t^10+11*t^5-1))">;
gl2tab["25B0-25b"]:=rec<g0gl2rec|
    label:="25B0-25b", genus:=0, sl2label:="25B0", gl2level:=25, sl2level:=25, index:=60, gl2id:=810,
    gens:=[[9,10,0,14],[0,7,7,2],[4,1,0,7]],
    msubs:=[],
    msups:=["25A0-25a","5D0-5a"],
    msupmaps:=["((t^2+4*t-1))/((t^2-t-1))","(-(t^4-2*t^3+4*t^2-3*t+1))/(t*(t^4+3*t^3+4*t^2+2*t+1))"],
    jlist:=[-19465109/22,-52893159101157376/11,6271688643866537984/1353],
    jmap:="(t^20+240*t^19+2160*t^18+6720*t^17+17520*t^16+30228*t^15+57840*t^14+60960*t^13+79920*t^12+41520*t^11+60494*t^10-41520*t^9+79920*t^8-60960*t^7+57840*t^6-30228*t^5+17520*t^4-6720*t^3+2160*t^2-240*t+1)^3/(t*(t^2-t-1)^25*(t^8+t^7+2*t^6+3*t^5+5*t^4-3*t^3+2*t^2-t+1))">;
gl2tab["7B0-7a"]:=rec<g0gl2rec|
    label:="7B0-7a", genus:=0, sl2label:="7B0", gl2level:=7, sl2level:=7, index:=8, gl2id:=76,
    gens:=[[2,0,0,4],[3,0,1,5],[1,0,0,3]],
    msubs:=["7E0-7b","7E0-7a","7E0-7c"],
    msups:=["1A0-1a"],
    msupmaps:=["(t^2+5*t+1)^3*(t^2+13*t+49)/t"],
    jlist:=[3375/2,-140625/8,-189613868625/128],
    jmap:="(t^2+5*t+1)^3*(t^2+13*t+49)/t">;
gl2tab["7D0-7a"]:=rec<g0gl2rec|
    label:="7D0-7a", genus:=0, sl2label:="7D0", gl2level:=7, sl2level:=7, index:=21, gl2id:=78,
    gens:=[[0,3,2,3],[2,4,4,5],[3,1,0,4]],
    msubs:=[],
    msups:=["1A0-1a"],
    msupmaps:=["(2*t-1)^3*(t^2-t+2)^3*(2*t^2+5*t+4)^3*(5*t^2+2*t-4)^3/(t^3+2*t^2-t-1)^7"],
    jlist:=[-9528128000000/17249876309,1372960580073984/235260548044817,106227040256/62748517],
    jmap:="(2*t-1)^3*(t^2-t+2)^3*(2*t^2+5*t+4)^3*(5*t^2+2*t-4)^3/(t^3+2*t^2-t-1)^7">;
gl2tab["7E0-7a"]:=rec<g0gl2rec|
    label:="7E0-7a", genus:=0, sl2label:="7E0", gl2level:=7, sl2level:=7, index:=24, gl2id:=68,
    gens:=[[6,0,1,6],[1,0,0,3]],
    msubs:=[],
    msups:=["7B0-7a"],
    msupmaps:=["49*(t^2-t)/((t^3-8*t^2+5*t+1))"],
    jlist:=[-1064019559329/125497034,-30526075007211889/103499257854,-23769846831649063249/3261823333284],
    jmap:="(t^2-t+1)^3*(t^6+229*t^5+270*t^4-1695*t^3+1430*t^2-235*t+1)^3/((t-1)*t*(t^3-8*t^2+5*t+1)^7)">;
gl2tab["7E0-7b"]:=rec<g0gl2rec|
    label:="7E0-7b", genus:=0, sl2label:="7E0", gl2level:=7, sl2level:=7, index:=24, gl2id:=67,
    gens:=[[6,0,1,6],[3,0,0,1]],
    msubs:=[],
    msups:=["7B0-7a"],
    msupmaps:=["((t^3-8*t^2+5*t+1))/((t-1)*t)"],
    jlist:=[-2146689/1664,-117649/8118144,444369620591/1540767744],
    jmap:="(t^2-t+1)^3*(t^6-11*t^5+30*t^4-15*t^3-10*t^2+5*t+1)^3/((t-1)^7*t^7*(t^3-8*t^2+5*t+1))">;
gl2tab["7E0-7c"]:=rec<g0gl2rec|
    label:="7E0-7c", genus:=0, sl2label:="7E0", gl2level:=7, sl2level:=7, index:=24, gl2id:=60,
    gens:=[[6,0,1,6],[3,0,0,4]],
    msubs:=[],
    msups:=["7B0-7a"],
    msupmaps:=["(-7*(t^3-2*t^2-t+1))/((t^3-t^2-2*t+1))"],
    jlist:=[-56723625/13,11397810375/62748517,-4212087761153109375/6364290927201661],
    jmap:="-(t^2-3*t-3)^3*(t^2-t+1)^3*(3*t^2-9*t+5)^3*(5*t^2-t-1)^3/((t^3-2*t^2-t+1)*(t^3-t^2-2*t+1)^7)">;
gl2tab["7F0-7a"]:=rec<g0gl2rec|
    label:="7F0-7a", genus:=0, sl2label:="7F0", gl2level:=7, sl2level:=7, index:=28, gl2id:=70,
    gens:=[[3,1,4,4],[4,4,1,3],[3,4,0,4]],
    msubs:=[],
    msups:=["1A0-1a"],
    msupmaps:=["t*(t+1)^3*(t^2-5*t+1)^3*(t^2-5*t+8)^3*(t^4-5*t^3+8*t^2-7*t+7)^3/(t^3-4*t^2+3*t+1)^7"],
    jlist:=[2813708206080/194754273881,-68694048000/62748517,-20245968606375/8031810176],
    jmap:="t*(t+1)^3*(t^2-5*t+1)^3*(t^2-5*t+8)^3*(t^4-5*t^3+8*t^2-7*t+7)^3/(t^3-4*t^2+3*t+1)^7">;
gl2tab["13A0-13a"]:=rec<g0gl2rec|
    label:="13A0-13a", genus:=0, sl2label:="13A0", gl2level:=13, sl2level:=13, index:=14, gl2id:=211,
    gens:=[[2,0,0,7],[1,0,1,1],[1,0,0,2]],
    msubs:=["13B0-13a","13B0-13b","13C0-13c","13C0-13a","13C0-13b"],
    msups:=["1A0-1a"],
    msupmaps:=["(t^2+5*t+13)*(t^4+7*t^3+20*t^2+19*t+1)^3/t"],
    jlist:=[-189/2,-5745702166029/8192,-1339893/4],
    jmap:="(t^2+5*t+13)*(t^4+7*t^3+20*t^2+19*t+1)^3/t">;
gl2tab["13B0-13a"]:=rec<g0gl2rec|
    label:="13B0-13a", genus:=0, sl2label:="13B0", gl2level:=13, sl2level:=13, index:=28, gl2id:=203,
    gens:=[[3,0,0,9],[4,0,1,10],[1,0,0,2]],
    msubs:=[],
    msups:=["13A0-13a"],
    msupmaps:=["(13*t)/((t^2-3*t-1))"],
    jlist:=[-1713910976512/1594323,-234499814820813937/3188646,-32663831300214001/5083731656658],
    jmap:="(t^4-t^3+5*t^2+t+1)*(t^8+235*t^7+1207*t^6+955*t^5+3840*t^4-955*t^3+1207*t^2-235*t+1)^3/(t*(t^2-3*t-1)^13)">;
gl2tab["13B0-13b"]:=rec<g0gl2rec|
    label:="13B0-13b", genus:=0, sl2label:="13B0", gl2level:=13, sl2level:=13, index:=28, gl2id:=204,
    gens:=[[3,0,0,9],[4,0,1,10],[2,0,0,1]],
    msubs:=[],
    msups:=["13A0-13a"],
    msupmaps:=["((t^2-3*t-1))/(t)"],
    jlist:=[-28672/3,152303/24576,-140246460241/73728],
    jmap:="(t^4-t^3+5*t^2+t+1)*(t^8-5*t^7+7*t^6-5*t^5+5*t^3+7*t^2+5*t+1)^3/(t^13*(t^2-3*t-1))">;
gl2tab["13C0-13a"]:=rec<g0gl2rec|
    label:="13C0-13a", genus:=0, sl2label:="13C0", gl2level:=13, sl2level:=13, index:=42, gl2id:=207,
    gens:=[[5,0,0,8],[1,0,1,1],[1,0,0,2]],
    msubs:=[],
    msups:=["13A0-13a"],
    msupmaps:=["13*(t^2-t)/((t^3-4*t^2+t+1))"],
    jlist:=[-45145776875761017/2441406250,-4318147757257132982364433/7324218750,-14210405279629/14648437500],
    jmap:="(t^2-t+1)^3*(t^12+231*t^11+269*t^10-3160*t^9+6022*t^8-9616*t^7+21880*t^6-34102*t^5+28297*t^4-12455*t^3+2876*t^2-243*t+1)^3/((t-1)*t*(t^3-4*t^2+t+1)^13)">;
gl2tab["13C0-13b"]:=rec<g0gl2rec|
    label:="13C0-13b", genus:=0, sl2label:="13C0", gl2level:=13, sl2level:=13, index:=42, gl2id:=206,
    gens:=[[5,0,0,8],[1,0,1,1],[2,0,0,1]],
    msubs:=[],
    msups:=["13A0-13a"],
    msupmaps:=["((t^3-4*t^2+t+1))/((t-1)*t)"],
    jlist:=[-60698457/40960,68633948441807/65303470080,-196626675110450473/326517350400],
    jmap:="(t^2-t+1)^3*(t^12-9*t^11+29*t^10-40*t^9+22*t^8-16*t^7+40*t^6-22*t^5-23*t^4+25*t^3-4*t^2-3*t+1)^3/((t-1)^13*t^13*(t^3-4*t^2+t+1))">;
gl2tab["13C0-13c"]:=rec<g0gl2rec|
    label:="13C0-13c", genus:=0, sl2label:="13C0", gl2level:=13, sl2level:=13, index:=42, gl2id:=202,
    gens:=[[5,0,0,8],[1,0,1,1],[2,0,0,3]],
    msubs:=[],
    msups:=["13A0-13a"],
    msupmaps:=["(-(5*t^3-7*t^2-8*t+5))/((t^3-4*t^2+t+1))"],
    jlist:=[-49353408/5,-2691707398848/1220703125,15518290784256/1220703125],
    jmap:="-13^4*(t^2-t+1)^3*(t^4-t^3+2*t^2-9*t+3)^3*(3*t^4-3*t^3-7*t^2+12*t-4)^3*(4*t^4-4*t^3-5*t^2+3*t-1)^3/((t^3-4*t^2+t+1)^13*(5*t^3-7*t^2-8*t+5))">;

// utility functions for parsing and sorting labels
function sl2LabelLevel(label)
    b,_,r:= Regexp("([0-9]+)[A-Z]+[0-9]+",label);
    assert b;
    return StringToInteger(r[1]);
end function;

function gl2LabelLevel(label)
    b,_,r:= Regexp("[0-9]+[A-Z]+[0-9]+-([0-9]+)[a-z]+",label);
    assert b;
    return StringToInteger(r[1]);
end function;

function sl2Label(label)
    b,s:= Regexp("[0-9]+[A-Z]+[0-9]+",label);
    assert b;
    return s;
end function;

function sl2LabelGenus(label)
    b,_,r:= Regexp("[0-9]+[A-Z]+([0-9]+)",label);
    assert b;
    return StringToInteger(r[1]);
end function;

function gl2LabelGenus(label) return sl2LabelGenus(label); end function;

// Comparison functions to sort labels by prime, genus, sl2-level, sl2-label, gl2-level, gl2-label
// Assumes we are working with prime-power levels
function sl2LabelCmp(label1,label2)
    b1,_,r1:= Regexp("([0-9]+)[A-Z]+([0-9]+)",label1);
    b2,_,r2:= Regexp("([0-9]+)[A-Z]+([0-9]+)",label2);
    assert b1 and b2;
    p1:=PrimeDivisors(StringToInteger(r1[1]))[1];  p2:=PrimeDivisors(StringToInteger(r2[1]))[1];
    if p1 ne p2 then return p1-p2; end if;
    if r1[2] ne r2[2] then return StringToInteger(r1[2])-StringToInteger(r2[2]); end if;
    if r1[1] ne r2[1] then return StringToInteger(r1[1])-StringToInteger(r2[1]); end if;
    if label1 lt label2 then return -1; end if;
    if label1 gt label2 then return 1; end if;
    return 0;
end function;

function gl2LabelCmp(label1,label2)
    n := sl2LabelCmp(label1,label2);
    if n ne 0 then return n; end if;
    b1,_,r1:= Regexp("[0-9]+[A-Z]+[0-9]+-([0-9]+)[a-z]+",label1);
    b2,_,r2:= Regexp("[0-9]+[A-Z]+[0-9]+-([0-9]+)[a-z]+",label1);
    assert b1 and b2;
    if r1[1] ne r2[1] then return StringToInteger(r1[1])-StringToInteger(r2[1]); end if;
    if label1 lt label2 then return -1; end if;
    if label1 gt label2 then return 1; end if;
    return 0;    
end function;

// return a list of labels of all groups in tab properly contained by the specified group
function gl2Subgroups(tab,label)
    S := {s: s in tab[label]`msubs};
    T := S;
    while true do
        T:= &join[{s:s in tab[k]`msubs}:k in T];
        if T subset S then break; end if;
        S := S join T;
    end while;
    S := Sort([s:s in S],gl2LabelCmp);
    return S;
end function;

// return a list of labels of all groups in tab properly containing the specified group
function gl2Supergroups(tab,label)
    S := {s: s in tab[label]`msups};
    T := S;
    while true do
        T:= &join[{s:s in tab[k]`msups}:k in T];
        if T subset S then break; end if;
        S := S join T;
    end while;
    S := Sort([s:s in S],gl2LabelCmp);
    return S;
end function;

// construct subgroup of sl2 from label
function sl2Group(tab,label)
    if label eq "1A0" then return CyclicGroup(1); end if;
    return sub<SL(2,Integers(r`level))|r`gens> where r:=tab[label];
end function;

// construct subgroup of gl2 from label
function gl2Group(tab,label)
    if label eq "1A0-1a" then return CyclicGroup(1); end if;
    return sub<GL(2,Integers(r`gl2level))|r`gens> where r:=tab[label];
end function;

// given subgroups H1,H2 of G, returns true if H1 is conjugate in G to a subgroup of H2
function IsConjugateToSubgroup(G,H1,H2)
    if not IsDivisibleBy(#H2,#H1) then return false; end if;
    if H1 subset H2 then return true; end if;   // handle easy cases quickly
    n:=#H2 div #H1;
    return #[H:H in Subgroups(H2:IndexEqual:=n)|IsConjugate(G,H`subgroup,H1)] ne 0;
end function;

// Given labels identifying subgroups G1 and G2 of prime-power levels n1 and n2 with n2 dividing n1, respectively, returns true if G1 is conjugate to a proper subgroup of G2
// This is computed by projecting both groups down to GL_2(Z/n2Z) (this works because G2 is the full inverse image of its projection down to GL(2,Z/n2Z), so if contains G1 there it does everywhere
function gl2IsProperSubgroup(tab,k1,k2)
    local r,s,N,G,n,rG,sG,S;
    if k1 ne "" and k2 eq "" then return true; end if;
    if k1 eq k2 then return false; end if;
    if k2 eq "1A0-1a" then return true; end if;
    r1 := tab[k1];  r2 := tab[k2];
    if not (IsDivisibleBy(r1`gl2level,r2`gl2level) and IsDivisibleBy(r1`index,r2`index)) then return false; end if;
    if r1`gl2level eq r2`gl2level then
        G:=GL(2,Integers(r1`gl2level));
        return IsConjugateToSubgroup(G,sub<G|r1`gens>,sub<G|r2`gens>);
    else
        G1:=GL(2,Integers(r1`gl2level));
        G2,pi:=ChangeRing(G1,Integers(r2`gl2level));
        return IsConjugateToSubgroup(G2,pi(sub<G1|r1`gens>),sub<G2|r2`gens>);
    end if;
end function;

// given the label of a genus zero group in tab, returns the map to the j-line, or to X_G, where G is the proper supergroup specified by target
// uses the InterpolateMiddleMap function in ratfunc.m to compute rational functions h such that f=g(h)
function g0Map(tab,source:target:="")
    F<t>:=FunctionField(Rationals());
    if target eq "" then
        return eval(tab[source]`jmap);
    else
        assert gl2IsProperSubgroup(gl2tab,source,target);
        f:=eval(tab[source]`jmap);
        g:=eval(tab[target]`jmap);
        h:=InterpolateMiddleMap(f,g);
        // if g is even pick sign of h to minimize string length -- the interpolation function cannot tell the difference, so we may as well.
        if Evaluate(g,-t) eq g and #RationalFunctionString(-h) lt #RationalFunctionString(h) then h:= -h; end if; 
        return h;
    end if;
end function;

// Given a subgroup G of GL2(Z/nZ), returns the least divisor m of n for which G is the full inverse image of its reduction mod m
// optimized for n a prime power
function gl2Level(G)
    if Type(G) eq MonStgElt then return gl2LabelLevel(G); end if;
    idx:=Index(GL(2,BaseRing(G)),G);
    if idx eq 1 then return 1; end if;
    P:=PrimeDivisors(#BaseRing(G));
    if #P eq 1 then
        m:=P[1];
        while Index(GL(2,Integers(m)),ChangeRing(G,Integers(m))) lt idx do m *:=P[1]; end while;
        return m;
    end if;
    return Min([m:m in Divisors(#BaseRing(G)) | m gt 1 and Index(GL(2,Integers(m)),ChangeRing(G,Integers(m))) eq idx]);
end function;

function sl2Level(G)
    if Type(G) eq MonStgElt then return sl2LabelLevel(G); end if;
    return gl2Level(G meet SL(2,BaseRing(G)));
end function;

function gl2Base(G)
    p:=PrimeDivisors(gl2Level(G));
    if #p eq 0 then return 1; end if;
    assert #p eq 1;
    return p[1];
end function;

function sl2Base(G)
    p:=PrimeDivisors(sl2Level(G));
    if #p eq 0 then return 1; end if;
    assert #p eq 1;
    return p[1];
end function;

function sl2Genus(G)
    if Type(G) eq MonStgElt then return sl2LabelGenus(G); end if;
    return GL2Genus(G);
end function;

function gl2Genus(G)
    if Type(G) eq MonStgElt then return gl2LabelGenus(G); end if;
    return GL2Genus(G);
end function;

gl2DetIndex := GL2DetIndex;
gl2ContainsCC := GL2ContainsCC;

// given a subgroup of GL(2,Z/nZ), try to find it in the table above, returns the label if found, otherwise an empty string
function g0Label(H)
    if not -Identity(H) in H then print "H does not contain -1"; return ""; end if;
    if gl2DetIndex(H) ne 1 then print "H does not have surjective det map"; return ""; end if;
    N:=gl2Level(H);
    if N eq 1 then return ""; end if;
    H:=ChangeRing(H,Integers(N));
    G:=GL(2,Integers(N));
    i:=Index(G,H);
    S:=[k:k in Keys(gl2tab)|gl2Level(k) eq N and gl2Genus(k) eq 0 and gl2tab[k]`index eq i and IsConjugate(G,H,sub<G|gl2tab[k]`gens>)]; 
    if #S eq 0 then
        if not gl2ContainsCC(H) then print "H does not contain an element corresponding to complex conjugation"; end if;
        return "";
    end if;
    assert #S eq 1;
    return S[1];
end function;

// Given a subgroup H of SL(2,Z/nZ) and a multiple m of n, returns the full preimage of H in SL(2,Z/mZ) under reduction mod n
function sl2Lift(H,m)
    n:=#BaseRing(H); 
    if n eq m then return H; end if;
    assert IsDivisibleBy(m,n);
    SL2m:=SL(2,Integers(m));
    SL2n,pi:=ChangeRing(SL2m,Integers(n));
    assert H subset SL2n;
    return sub<SL2m|Kernel(pi),Inverse(pi)(H)>;
end function;

// Given a subgroup H of SL(2,Z/nZ), returns a (possibly empty) list of subgroups G of GL(2,Z/nZ) of level n
// for which gl2DetIndex(G)=1 and GL2ContainsCC(G)=true and G meet SL(2,Z/nZ) eq H
function gl2QImagesFromSL2(H)
    GL2:=GL(2,BaseRing(H));
    SL2:=SL(2,BaseRing(H));
    assert H subset SL2;
    N:=Normalizer(GL2,H);
    Q,pi:=quo<N|H>;
    // we are interested only in subgroups of Q that are isomorphic to the multiplicative group of Z/nZ
    m:=#MultiplicativeGroup(BaseRing(H));
    S:=[Inverse(pi)(K`subgroup) : K in Subgroups(Q:OrderEqual:=m,IsAbelian:=true)];
    return [G: G in S | gl2DetIndex(G) eq 1 and gl2ContainsCC(G) and gl2Level(G) eq #BaseRing(H)];
end function;

// given a subgroup H of GL(2,Z/nZ) containing -1, return a list of index 2 subgroups of the corresponding GL(2,Zhat) subgroup not containing -1 that have full det and complex conjugation
// when n is divisible by 2 some of these may be subgroups higher level (2n, or even 4n when n=2).
function gl2QTwists(H)
    if Type(H) ne GrpMat then assert H eq CyclicGroup(1); return []; end if;
    assert -Identity(H) in H;
    N:=#BaseRing(H);
    if IsDivisibleBy(N,2) then
        if N eq 2 then
            G:=GL(2,Integers(4*#BaseRing(H)));
        else
            G:=GL(2,Integers(2*#BaseRing(H)));
        end if;
        _,pi:=ChangeRing(G,Integers(#BaseRing(H)));
        H:=sub<G|Kernel(pi),Inverse(pi)(H)>;
    else
        G:=GL(2,Integers(#BaseRing(H)));
    end if;
    S := [K`subgroup:K in Subgroups(H:IndexEqual:=2)|not -Identity(K`subgroup) in K`subgroup and gl2DetIndex(K`subgroup) eq 1 and gl2ContainsCC(K`subgroup)];
    G:=GL(2,Integers(#BaseRing(H)));
    S := [S[i]:i in [1..#S] | #[j:j in [1..i-1]|IsConjugate(G,S[i],S[j])] eq 0];
    if #BaseRing(H) mod 2 eq 0 then S:=[ChangeRing(K,Integers(gl2Level(K))):K in S]; end if;
    return S;
end function;

procedure g0Verify()
    print "This should take about an hour...";
    // First verify that we have the complete list of gl2 groups of prime power level with full det and cc
    c:=0;
    for p in Sort([p:p in Set([sl2Base(k) :k in Keys(sl2tab) | sl2Level(k) gt 1 and sl2Genus(k) eq 0])]) do
        printf "Computing genus zero subgroups of GL(2,Z_%o) with full det and complex conjugation...\n", p;
        S:=Sort([k : k in Keys(sl2tab) | sl2Base(k) eq p and sl2Genus(k) eq 0], sl2LabelCmp);
        T:=[k : k in Keys(gl2tab) | gl2Base(k) eq p and gl2Genus(k) eq 0];
        e:=1; m:=Max([Valuation(sl2Level(k),p):k in S]);  // m is a strict lower bound on the least e we need to consider
        while true do
            N := p^e;
            printf "Checking level %o...", N;
            R := [ <k, gl2QImagesFromSL2(sl2Lift(sl2Group(sl2tab,k),N))> : k in S | sl2Level(k) le N];
            R := [r:r in R | #r[2] gt 0];
            n := #R gt 0 select &+[#r[2]:r in R] else 0;
            printf "found %o genus zero subgroups of GL(2,Z_%o) of level %o\n",  n, p, N;
            if n eq 0 and e gt m then break; end if;    // note that for p=2 m is greater than 2
            c +:= n;
            G:=GL(2,Integers(N));
            for r in R do
                if #r[2] gt 0 then print r[1],#r[2]; end if;
                for H in r[2] do
                    assert #[k : k in T | sl2Label(k) eq r[1] and gl2Level(k) eq N and IsConjugate(G,H,gl2Group(gl2tab,k))] eq 1;
                end for;
            end for;
            e +:= 1;
        end while;
    end for;
    printf "Found a total of %o genus zero GL2-groups of prime power level with full determinant and complex conjugation\n", c;
    assert c eq #[k:k in Keys(gl2tab) | gl2Level(k) gt 1 and gl2Genus(k) eq 0];
    R<t>:=PolynomialRing(Rationals());
    for k in Sort([k:k in Keys(gl2tab) | gl2Level(k) gt 1 and gl2Genus(k) eq 0], gl2LabelCmp) do
        print "Verifying", k;
        r:=gl2tab[k];
        // verify basic gl2 data (index, newness, contains -1, full det, contains cc)
        N := r`gl2level;
        G:=GL(2,Integers(N));
        H:=sub<G|r`gens>;
        assert r`index eq Index(G,H) and r`gl2level eq gl2Level(H);
        S:=PrimeDivisors(N);
        assert #S eq 1;
        assert -Identity(H) in H and gl2DetIndex(H) eq 1 and gl2ContainsCC(H);
        // verify sl2 data
        assert r`sl2level eq sl2tab[r`sl2label]`level;
        assert r`index eq sl2tab[r`sl2label]`index;
        S:=SL(2,Integers(r`gl2level));
        assert IsConjugate(S,H meet S, sl2Lift(sl2Group(sl2tab, r`sl2label), r`gl2level));
        // verify minimal supergroup list
        S:={j : j in Keys(gl2tab) | gl2IsProperSubgroup(gl2tab,k,j)};
        assert {m:m in gl2tab[k]`msups} eq {j : j in S | IsEmpty({i : i in S | gl2IsProperSubgroup(gl2tab,i,j)})}; 
        // verify maximal subgroup list
        S:={j:j in Keys(gl2tab)|gl2IsProperSubgroup(gl2tab,j,k)};
        assert {m:m in gl2tab[k]`msubs} eq {j: j  in S | IsEmpty({i : i in S | gl2IsProperSubgroup(gl2tab,j,i)})}; 
        assert #r`msups eq #r`msupmaps;
        f:=eval(r`jmap);
        for i in [1..#r`msups] do
            assert gl2IsProperSubgroup(gl2tab,k,r`msups[i]);
            h:=eval(r`msupmaps[i]);
            g:=g0Map(gl2tab,r`msups[i]);
            assert f eq Evaluate(g,h);
        end for;
        for j in r`jlist do
            g:=R!j*Denominator(f)-Numerator(f);
            if #Roots(g) eq 0 then print "j-invariant not in image of function:", j, g, r`label; end if;
            assert #Roots(g) gt 0;
        end for;
    end for;
    print "All genus 0 group verifications succeeded.";
end procedure;
