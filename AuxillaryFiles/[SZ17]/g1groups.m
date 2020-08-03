// Magma code and data related to "Modular curves of prime power level with infinitely many rational points",
// by Andrew V. Sutherland and David Zywina.

load "~/EntanglementGroups/AuxillaryFiles/[SZ17]/g0groups.m";      // creates sl2tab and gl2tab populated with genus zero groups, here we add genus one groups
load "~/EntanglementGroups/AuxillaryFiles/[SZ17]/JacobianRank.m";  // contains JacobianOfXG, used to determine genus one groups G for which Jac(X_G) has positive rank

// The table of genus one subgroups of SL(2,Z) taken from the Cummins-Pauli tables at
// http://www.uncg.edu/mat/faculty/pauli/congruence/congruence.html
// We use more compact lists of generators to speed things up, but they generate the same groups

sl2tab["8A1"]:=rec<sl2rec|label:="8A1", level:=8, index:=12, gens:=[[5,0,0,5],[2,1,3,2],[0,3,5,4]]>;
sl2tab["8B1"]:=rec<sl2rec|label:="8B1", level:=8, index:=24, gens:=[[3,0,0,3],[5,0,0,5],[1,2,4,1]]>;
sl2tab["8C1"]:=rec<sl2rec|label:="8C1", level:=8, index:=24, gens:=[[3,0,0,3],[5,0,0,5],[0,3,5,4]]>;
sl2tab["8D1"]:=rec<sl2rec|label:="8D1", level:=8, index:=24, gens:=[[3,4,0,3],[0,3,5,0]]>;
sl2tab["8E1"]:=rec<sl2rec|label:="8E1", level:=8, index:=32, gens:=[[3,0,0,3],[1,1,1,2]]>;
sl2tab["8F1"]:=rec<sl2rec|label:="8F1", level:=8, index:=48, gens:=[[3,0,0,3],[5,0,0,5],[1,4,4,1]]>;
sl2tab["8G1"]:=rec<sl2rec|label:="8G1", level:=8, index:=48, gens:=[[7,0,0,7],[3,2,4,3]]>;
sl2tab["8H1"]:=rec<sl2rec|label:="8H1", level:=8, index:=48, gens:=[[1,4,4,1],[0,3,5,0]]>;
sl2tab["8I1"]:=rec<sl2rec|label:="8I1", level:=8, index:=48, gens:=[[3,0,0,3],[0,3,5,0]]>;
sl2tab["8J1"]:=rec<sl2rec|label:="8J1", level:=8, index:=64, gens:=[[3,3,3,6]]>;
sl2tab["8K1"]:=rec<sl2rec|label:="8K1", level:=8, index:=96, gens:=[[7,0,0,7],[3,4,4,3]]>;
sl2tab["16A1"]:=rec<sl2rec|label:="16A1", level:=16, index:=24, gens:=[[7,0,0,7],[3,8,0,11],[0,5,3,6]]>;
sl2tab["16B1"]:=rec<sl2rec|label:="16B1", level:=16, index:=24, gens:=[[3,0,0,11],[0,3,5,0],[2,3,9,6]]>;
sl2tab["16C1"]:=rec<sl2rec|label:="16C1", level:=16, index:=24, gens:=[[2,1,3,2],[0,3,5,8]]>;
sl2tab["16D1"]:=rec<sl2rec|label:="16D1", level:=16, index:=24, gens:=[[3,8,0,11],[0,3,5,0],[5,2,2,1]]>;
sl2tab["16E1"]:=rec<sl2rec|label:="16E1", level:=16, index:=48, gens:=[[7,0,0,7],[3,0,0,11],[1,2,8,1]]>;
sl2tab["16F1"]:=rec<sl2rec|label:="16F1", level:=16, index:=48, gens:=[[3,0,0,11],[1,4,4,1],[0,3,5,0]]>;
sl2tab["16G1"]:=rec<sl2rec|label:="16G1", level:=16, index:=48, gens:=[[7,0,0,7],[9,0,0,9],[0,9,7,6]]>;
sl2tab["16H1"]:=rec<sl2rec|label:="16H1", level:=16, index:=48, gens:=[[3,8,0,11],[1,4,4,1],[4,3,5,4]]>;
sl2tab["16I1"]:=rec<sl2rec|label:="16I1", level:=16, index:=48, gens:=[[3,0,0,11],[0,3,5,8],[1,4,12,1]]>;
sl2tab["16J1"]:=rec<sl2rec|label:="16J1", level:=16, index:=48, gens:=[[7,0,0,7],[0,3,5,0],[5,2,2,1]]>;
sl2tab["16K1"]:=rec<sl2rec|label:="16K1", level:=16, index:=48, gens:=[[7,4,0,7],[0,3,5,0]]>;
sl2tab["16L1"]:=rec<sl2rec|label:="16L1", level:=16, index:=48, gens:=[[1,4,0,1],[0,5,3,0]]>;
sl2tab["16M1"]:=rec<sl2rec|label:="16M1", level:=16, index:=96, gens:=[[1,4,0,1],[7,0,0,7],[3,2,8,11]]>;
sl2tab["32A1"]:=rec<sl2rec|label:="32A1", level:=32, index:=48, gens:=[[11,8,0,3],[13,8,0,5],[2,11,5,12]]>;
sl2tab["32B1"]:=rec<sl2rec|label:="32B1", level:=32, index:=48, gens:=[[3,0,0,11],[5,2,2,1],[0,7,9,0]]>;
sl2tab["32C1"]:=rec<sl2rec|label:="32C1", level:=32, index:=48, gens:=[[2,1,3,2],[4,3,5,4]]>;
sl2tab["32D1"]:=rec<sl2rec|label:="32D1", level:=32, index:=48, gens:=[[4,3,5,4],[13,2,14,17]]>;
sl2tab["32E1"]:=rec<sl2rec|label:="32E1", level:=32, index:=96, gens:=[[15,0,0,15],[7,16,0,23],[0,7,9,2]]>;
sl2tab["9A1"]:=rec<sl2rec|label:="9A1", level:=9, index:=12, gens:=[[2,0,0,5],[2,3,1,2]]>;
sl2tab["9B1"]:=rec<sl2rec|label:="9B1", level:=9, index:=18, gens:=[[2,0,0,5],[4,4,4,2]]>;
sl2tab["9C1"]:=rec<sl2rec|label:="9C1", level:=9, index:=36, gens:=[[2,0,0,5],[1,0,3,1]]>;
sl2tab["9D1"]:=rec<sl2rec|label:="9D1", level:=9, index:=36, gens:=[[2,3,1,2]]>;
sl2tab["9E1"]:=rec<sl2rec|label:="9E1", level:=9, index:=54, gens:=[[2,0,0,5],[0,2,4,0]]>;
sl2tab["9F1"]:=rec<sl2rec|label:="9F1", level:=9, index:=54, gens:=[[5,3,3,2],[3,2,4,6]]>;
sl2tab["9G1"]:=rec<sl2rec|label:="9G1", level:=9, index:=81, gens:=[[4,1,1,5],[0,1,8,0]]>;
sl2tab["9H1"]:=rec<sl2rec|label:="9H1", level:=9, index:=108, gens:=[[8,0,3,8]]>;
sl2tab["27A1"]:=rec<sl2rec|label:="27A1", level:=27, index:=36, gens:=[[7,9,0,4],[8,9,1,8]]>;
sl2tab["27B1"]:=rec<sl2rec|label:="27B1", level:=27, index:=36, gens:=[[4,0,0,7],[5,6,4,5]]>;
sl2tab["27C1"]:=rec<sl2rec|label:="27C1", level:=27, index:=108, gens:=[[8,0,0,17],[14,9,2,11]]>;
sl2tab["7A1"]:=rec<sl2rec|label:="7A1", level:=7, index:=42, gens:=[[1,4,2,2]]>;
sl2tab["7B1"]:=rec<sl2rec|label:="7B1", level:=7, index:=56, gens:=[[3,0,5,5]]>;
sl2tab["7C1"]:=rec<sl2rec|label:="7C1", level:=7, index:=84, gens:=[[0,3,2,0]]>;
sl2tab["49A1"]:=rec<sl2rec|label:="49A1", level:=49, index:=56, gens:=[[10,2,0,5],[1,1,4,5]]>;
sl2tab["11A1"]:=rec<sl2rec|label:="11A1", level:=11, index:=12, gens:=[[3,3,0,4],[3,1,2,1]]>;
sl2tab["11B1"]:=rec<sl2rec|label:="11B1", level:=11, index:=55, gens:=[[1,2,5,0],[5,6,4,5]]>;
sl2tab["11C1"]:=rec<sl2rec|label:="11C1", level:=11, index:=55, gens:=[[3,4,4,2],[3,1,1,8]]>;
sl2tab["11D1"]:=rec<sl2rec|label:="11D1", level:=11, index:=60, gens:=[[5,4,2,4]]>;
sl2tab["17A1"]:=rec<sl2rec|label:="17A1", level:=17, index:=18, gens:=[[3,0,0,6],[1,0,1,1]]>;
sl2tab["17B1"]:=rec<sl2rec|label:="17B1", level:=17, index:=36, gens:=[[2,0,0,9],[1,0,1,1]]>;
sl2tab["17C1"]:=rec<sl2rec|label:="17C1", level:=17, index:=72, gens:=[[4,0,0,13],[1,0,1,1]]>;
sl2tab["19A1"]:=rec<sl2rec|label:="19A1", level:=19, index:=20, gens:=[[4,7,0,5],[4,1,4,6]]>;
sl2tab["19B1"]:=rec<sl2rec|label:="19B1", level:=19, index:=60, gens:=[[7,9,0,11],[0,8,7,1]]>;

// record for (conjugacy classes of) open subgroups G of GL(2,Zhat) of prime power level and genus 1 with surjective det map and complex conjugation
// these records are stored in gl2tab, which also contains records for genus 0 groups with a slightly different format (see g0groups.m)
g1gl2rec := recformat<
    label:MonStgElt,          // label of the form s-t where s is an sl2label in Cummins-Pauli format and t is of the form Nc, where N is the gl2-level and c is a lower-case letter
    genus:Integers(),         // always 1, also encoded in label
    sl2label:MonStgElt,       // Cummins-Pauli label of intersection with sl2, prefix of label
    gl2level:Integers(),      // minimal integer n such that group is the full inverse image of its projection to GL(2,Z/nZ), always a prime power
    sl2level:Integers(),      // level of the intersection of G with SL(2,Zhat) -- necessarily divides the gl2level but may be smaller
    index:Integers(),         // index in GL(2,Zhat) (same as index of its intersection with sl2 because det map is surjective)
    gl2id:Integers(),         // unique identifier of a conjugacy class of a subgroup of GL(2,Z/nZ) -- not used here
    gens:SeqEnum,             // matrix generators for image in GL(2,Z/nZ), contains a prefix generating intersection with SL(2,Z/nZ)
    msubs:SeqEnum,            // labels of all maximal subgroups that appear in this list (i.e. of genus 1)
    msups:SeqEnum,            // labels of all minimal supergroups (necessarily of genus 0 or 1)
    class:MonStgElt,          // isogeny class of elliptic curve isomorphic to X_G
    rank:Integers(),          // rank of X_G as an elliptic curve over Q
    curve:MonStgElt,          // Cremona label of an elliptic curve E isomorphic to X_G (currently listed only when rank > 0)
    jlist:SeqEnum,            // List of j-invariants corresponding to points on X_G (currently 3 are listed when rank > 0).
    g0target:MonStgElt,       // For rank > 0 curves, this is the label of a genus 0 group that X_G maps to
    g0map:MonStgElt,          // String that evaluates to a rational map in Q(x,y) that sends points [x:y:1] on curve to g0target
    product:Tup               // For curves constructed as fiber products of genus 0 curves, a tuple <<G,H2,H3,H4>,<f12,f13,f24,f34>>
                              // that expresses X_G with maps f12:X_G->X_H2, and f13:X_G->X_H3 as fiber product of f24:X_H2->X_H4 and f34:X_H3->X_H4 (H4="" is used for X(1))
>;

F<t>:=FunctionField(Rationals());
F<x,y>:=FunctionField(Rationals(),2);

gl2tab["8A1-8a"]:=rec<g1gl2rec|
    label:="8A1-8a", genus:=1, sl2label:="8A1", gl2level:=8, sl2level:=8, index:=12, gl2id:=2210,
    gens:=[[5,0,0,5],[2,1,3,2],[0,3,5,4],[1,0,0,3],[1,0,0,5]],
    msubs:=["8B1-8e","8B1-8f","8B1-8h","8B1-8l","8C1-8a","8C1-8b","8C1-8d","8C1-8e","8C1-8i","8C1-8k"],
    msups:=["4C0-4a"],
    class:="64a", rank:=0>;
gl2tab["8A1-8b"]:=rec<g1gl2rec|
    label:="8A1-8b", genus:=1, sl2label:="8A1", gl2level:=8, sl2level:=8, index:=12, gl2id:=2214,
    gens:=[[5,0,0,5],[2,1,3,2],[0,3,5,4],[1,4,0,3],[1,4,0,5]],
    msubs:=["8B1-8c","8B1-8d","8B1-8g","8B1-8k","8C1-8c","8C1-8f","8C1-8g","8C1-8h","8C1-8j","8C1-8l"],
    msups:=["4C0-4a"],
    class:="32a", rank:=0>;
gl2tab["8A1-8c"]:=rec<g1gl2rec|
    label:="8A1-8c", genus:=1, sl2label:="8A1", gl2level:=8, sl2level:=8, index:=12, gl2id:=2202,
    gens:=[[5,0,0,5],[2,1,3,2],[0,3,5,4],[3,2,0,1],[1,0,0,5]],
    msubs:=["8B1-8b","8B1-8i"],
    msups:=["4C0-4b"],
    class:="64a", rank:=0>;
gl2tab["8A1-8d"]:=rec<g1gl2rec|
    label:="8A1-8d", genus:=1, sl2label:="8A1", gl2level:=8, sl2level:=8, index:=12, gl2id:=2205,
    gens:=[[5,0,0,5],[2,1,3,2],[0,3,5,4],[3,2,0,1],[1,4,0,5]],
    msubs:=["8B1-8a","8B1-8j"],
    msups:=["4C0-4b"],
    class:="32a", rank:=0>;
gl2tab["8B1-8a"]:=rec<g1gl2rec|
    label:="8B1-8a", genus:=1, sl2label:="8B1", gl2level:=8, sl2level:=8, index:=24, gl2id:=2022,
    gens:=[[3,0,0,3],[5,0,0,5],[1,2,4,1],[1,0,0,3],[1,0,0,5]],
    msubs:=["8F1-8p","8F1-8t","8G1-8a","8G1-8d","8G1-8f","8G1-8g"],
    msups:=["4E0-4c","8B0-8d","8A1-8d"],
    class:="32a", rank:=0>;
gl2tab["8B1-8b"]:=rec<g1gl2rec|
    label:="8B1-8b", genus:=1, sl2label:="8B1", gl2level:=8, sl2level:=8, index:=24, gl2id:=2015,
    gens:=[[3,0,0,3],[5,0,0,5],[1,2,4,1],[1,0,0,3],[1,2,0,5]],
    msubs:=["8F1-8h","8F1-8s","8G1-8b","8G1-8e","8G1-8h"],
    msups:=["4E0-4c","8B0-8c","8A1-8c"],
    class:="64a", rank:=0>;
gl2tab["8B1-8c"]:=rec<g1gl2rec|
    label:="8B1-8c", genus:=1, sl2label:="8B1", gl2level:=8, sl2level:=8, index:=24, gl2id:=2098,
    gens:=[[3,0,0,3],[5,0,0,5],[1,2,4,1],[1,0,0,5],[1,2,2,3]],
    msubs:=["8F1-8j","8F1-8o"],
    msups:=["4E0-4b","8B0-8b","8A1-8b"],
    class:="32a", rank:=0>;
gl2tab["8B1-8d"]:=rec<g1gl2rec|
    label:="8B1-8d", genus:=1, sl2label:="8B1", gl2level:=8, sl2level:=8, index:=24, gl2id:=2065,
    gens:=[[3,0,0,3],[5,0,0,5],[1,2,4,1],[1,1,0,3],[1,0,0,5]],
    msubs:=["8F1-8b","8F1-8k"],
    msups:=["4E0-4a","8B0-8b","8A1-8b"],
    class:="32a", rank:=0>;
gl2tab["8B1-8e"]:=rec<g1gl2rec|
    label:="8B1-8e", genus:=1, sl2label:="8B1", gl2level:=8, sl2level:=8, index:=24, gl2id:=2077,
    gens:=[[3,0,0,3],[5,0,0,5],[1,2,4,1],[1,2,0,5],[1,0,2,3]],
    msubs:=["8F1-8f","8F1-8n"],
    msups:=["4E0-4b","8B0-8a","8A1-8a"],
    class:="64a", rank:=0>;
gl2tab["8B1-8f"]:=rec<g1gl2rec|
    label:="8B1-8f", genus:=1, sl2label:="8B1", gl2level:=8, sl2level:=8, index:=24, gl2id:=2044,
    gens:=[[3,0,0,3],[5,0,0,5],[1,2,4,1],[1,3,0,3],[1,2,0,5]],
    msubs:=["8F1-8a","8F1-8g"],
    msups:=["4E0-4a","8B0-8a","8A1-8a"],
    class:="64a", rank:=0>;
gl2tab["8B1-8g"]:=rec<g1gl2rec|
    label:="8B1-8g", genus:=1, sl2label:="8B1", gl2level:=8, sl2level:=8, index:=24, gl2id:=2056,
    gens:=[[3,0,0,3],[5,0,0,5],[1,2,4,1],[1,3,0,3],[1,2,2,3]],
    msubs:=["8F1-8l","8F1-8q"],
    msups:=["4E0-8g","8B0-8a","8A1-8b"],
    class:="32a", rank:=0>;
gl2tab["8B1-8h"]:=rec<g1gl2rec|
    label:="8B1-8h", genus:=1, sl2label:="8B1", gl2level:=8, sl2level:=8, index:=24, gl2id:=2052,
    gens:=[[3,0,0,3],[5,0,0,5],[1,2,4,1],[1,3,0,3],[1,3,2,3]],
    msubs:=["8F1-8m","8F1-8r"],
    msups:=["4E0-8g","8B0-8b","8A1-8a"],
    class:="64a", rank:=0>;
gl2tab["8B1-8i"]:=rec<g1gl2rec|
    label:="8B1-8i", genus:=1, sl2label:="8B1", gl2level:=8, sl2level:=8, index:=24, gl2id:=2119,
    gens:=[[3,0,0,3],[5,0,0,5],[1,2,4,1],[3,0,0,5],[1,3,2,3]],
    msubs:=["8G1-8c"],
    msups:=["4E0-8h","8B0-8d","8A1-8c"],
    class:="64a", rank:=0>;
gl2tab["8B1-8j"]:=rec<g1gl2rec|
    label:="8B1-8j", genus:=1, sl2label:="8B1", gl2level:=8, sl2level:=8, index:=24, gl2id:=2118,
    gens:=[[3,0,0,3],[5,0,0,5],[1,2,4,1],[3,2,0,5],[1,1,2,5]],
    msubs:=["8G1-16a"],
    msups:=["4E0-8h","8B0-8c","8A1-8d"],
    class:="32a", rank:=0>;
gl2tab["8B1-8k"]:=rec<g1gl2rec|
    label:="8B1-8k", genus:=1, sl2label:="8B1", gl2level:=8, sl2level:=8, index:=24, gl2id:=2109,
    gens:=[[3,0,0,3],[5,0,0,5],[1,2,4,1],[3,3,0,5],[1,0,2,3]],
    msubs:=["8F1-8d","8F1-8e"],
    msups:=["4E0-8a","8B0-8a","8A1-8b"],
    class:="32a", rank:=0>;
gl2tab["8B1-8l"]:=rec<g1gl2rec|
    label:="8B1-8l", genus:=1, sl2label:="8B1", gl2level:=8, sl2level:=8, index:=24, gl2id:=2110,
    gens:=[[3,0,0,3],[5,0,0,5],[1,2,4,1],[3,3,0,5],[1,3,2,3]],
    msubs:=["8F1-8c","8F1-8i"],
    msups:=["4E0-8a","8B0-8b","8A1-8a"],
    class:="64a", rank:=0>;
gl2tab["8C1-8a"]:=rec<g1gl2rec|
    label:="8C1-8a", genus:=1, sl2label:="8C1", gl2level:=8, sl2level:=8, index:=24, gl2id:=2045,
    gens:=[[3,0,0,3],[5,0,0,5],[0,3,5,4],[1,0,0,3],[1,0,0,5]],
    msubs:=["8F1-8f","8F1-8m"],
    msups:=["4F0-4a","8D0-8c","8A1-8a"],
    class:="64a", rank:=0>;
gl2tab["8C1-8b"]:=rec<g1gl2rec|
    label:="8C1-8b", genus:=1, sl2label:="8C1", gl2level:=8, sl2level:=8, index:=24, gl2id:=2053,
    gens:=[[3,0,0,3],[5,0,0,5],[0,3,5,4],[1,0,0,3],[1,2,2,1]],
    msubs:=["8F1-8a","8F1-8i"],
    msups:=["4F0-8a","8D0-8d","8A1-8a"],
    class:="64a", rank:=0>;
gl2tab["8C1-8c"]:=rec<g1gl2rec|
    label:="8C1-8c", genus:=1, sl2label:="8C1", gl2level:=8, sl2level:=8, index:=24, gl2id:=2066,
    gens:=[[3,0,0,3],[5,0,0,5],[0,3,5,4],[1,0,0,3],[1,4,0,5]],
    msubs:=["8F1-8e","8F1-8j","8F1-8k","8F1-8q"],
    msups:=["4F0-4a","8D0-8d","8A1-8b"],
    class:="32a", rank:=0>;
gl2tab["8C1-8d"]:=rec<g1gl2rec|
    label:="8C1-8d", genus:=1, sl2label:="8C1", gl2level:=8, sl2level:=8, index:=24, gl2id:=2078,
    gens:=[[3,0,0,3],[5,0,0,5],[0,3,5,4],[1,0,0,5],[1,2,6,3]],
    msubs:=["8F1-8c","8F1-8g"],
    msups:=["4F0-4b","8D0-8a","8A1-8a"],
    class:="64a", rank:=0>;
gl2tab["8C1-8e"]:=rec<g1gl2rec|
    label:="8C1-8e", genus:=1, sl2label:="8C1", gl2level:=8, sl2level:=8, index:=24, gl2id:=2083,
    gens:=[[3,0,0,3],[5,0,0,5],[0,3,5,4],[1,4,0,3],[1,0,0,5]],
    msubs:=["8F1-8f","8F1-8g","8F1-8i","8F1-8r"],
    msups:=["4F0-4a","8D0-8a","8A1-8a"],
    class:="64a", rank:=0>;
gl2tab["8C1-8f"]:=rec<g1gl2rec|
    label:="8C1-8f", genus:=1, sl2label:="8C1", gl2level:=8, sl2level:=8, index:=24, gl2id:=2103,
    gens:=[[3,0,0,3],[5,0,0,5],[0,3,5,4],[1,4,0,3],[1,2,6,1]],
    msubs:=["8F1-8b","8F1-8e"],
    msups:=["4F0-8a","8D0-8a","8A1-8b"],
    class:="32a", rank:=0>;
gl2tab["8C1-8g"]:=rec<g1gl2rec|
    label:="8C1-8g", genus:=1, sl2label:="8C1", gl2level:=8, sl2level:=8, index:=24, gl2id:=2116,
    gens:=[[3,0,0,3],[5,0,0,5],[0,3,5,4],[1,4,0,3],[1,4,0,5]],
    msubs:=["8F1-8j","8F1-8l"],
    msups:=["4F0-4a","8D0-8b","8A1-8b"],
    class:="32a", rank:=0>;
gl2tab["8C1-8h"]:=rec<g1gl2rec|
    label:="8C1-8h", genus:=1, sl2label:="8C1", gl2level:=8, sl2level:=8, index:=24, gl2id:=2054,
    gens:=[[3,0,0,3],[5,0,0,5],[0,3,5,4],[1,4,0,5],[2,1,1,2]],
    msubs:=["8F1-8d","8F1-8k"],
    msups:=["4F0-4b","8D0-8d","8A1-8b"],
    class:="32a", rank:=0>;
gl2tab["8C1-8i"]:=rec<g1gl2rec|
    label:="8C1-8i", genus:=1, sl2label:="8C1", gl2level:=8, sl2level:=8, index:=24, gl2id:=2108,
    gens:=[[3,0,0,3],[5,0,0,5],[0,3,5,4],[3,0,0,5],[1,2,2,1]],
    msubs:=["8F1-8n","8F1-8r"],
    msups:=["4F0-8b","8D0-8b","8A1-8a"],
    class:="64a", rank:=0>;
gl2tab["8C1-8j"]:=rec<g1gl2rec|
    label:="8C1-8j", genus:=1, sl2label:="8C1", gl2level:=8, sl2level:=8, index:=24, gl2id:=2062,
    gens:=[[3,0,0,3],[5,0,0,5],[0,3,5,4],[3,0,0,5],[2,1,1,2]],
    msubs:=["8F1-8o","8F1-8q"],
    msups:=["4F0-8b","8D0-8c","8A1-8b"],
    class:="32a", rank:=0>;
gl2tab["8C1-8k"]:=rec<g1gl2rec|
    label:="8C1-8k", genus:=1, sl2label:="8C1", gl2level:=8, sl2level:=8, index:=24, gl2id:=2063,
    gens:=[[3,0,0,3],[5,0,0,5],[0,3,5,4],[3,4,0,5],[1,2,2,1]],
    msubs:=["8F1-8a","8F1-8c","8F1-8m","8F1-8n"],
    msups:=["4F0-8b","8D0-8d","8A1-8a"],
    class:="64a", rank:=0>;
gl2tab["8C1-8l"]:=rec<g1gl2rec|
    label:="8C1-8l", genus:=1, sl2label:="8C1", gl2level:=8, sl2level:=8, index:=24, gl2id:=2107,
    gens:=[[3,0,0,3],[5,0,0,5],[0,3,5,4],[3,4,0,5],[1,2,6,1]],
    msubs:=["8F1-8b","8F1-8d","8F1-8l","8F1-8o"],
    msups:=["4F0-8b","8D0-8a","8A1-8b"],
    class:="32a", rank:=0>;
gl2tab["8D1-16a"]:=rec<g1gl2rec|
    label:="8D1-16a", genus:=1, sl2label:="8D1", gl2level:=16, sl2level:=8, index:=24, gl2id:=27747,
    gens:=[[7,0,0,7],[3,4,0,11],[0,3,5,0],[3,0,0,5],[1,2,2,1]],
    msubs:=["8H1-16a","8H1-16d","8H1-16i","8H1-16l"],
    msups:=["4F0-8b"],
    class:="256d", rank:=0>;
gl2tab["8D1-16b"]:=rec<g1gl2rec|
    label:="8D1-16b", genus:=1, sl2label:="8D1", gl2level:=16, sl2level:=8, index:=24, gl2id:=27748,
    gens:=[[7,0,0,7],[3,4,0,11],[0,3,5,0],[3,0,0,5],[1,2,2,9]],
    msubs:=["8H1-16b","8H1-16c","8H1-16j","8H1-16k"],
    msups:=["4F0-8b"],
    class:="256a", rank:=1, curve:="256a1",
    g0target:="4F0-8b", g0map:="x+1",
    jlist:=[]>;
gl2tab["8D1-16c"]:=rec<g1gl2rec|
    label:="8D1-16c", genus:=1, sl2label:="8D1", gl2level:=16, sl2level:=8, index:=24, gl2id:=27749,
    gens:=[[7,0,0,7],[3,4,0,11],[0,3,5,0],[3,4,0,5],[1,2,2,1]],
    msubs:=["8H1-16e","8H1-16g"],
    msups:=["4F0-8b"],
    class:="256a", rank:=1, curve:="256a2",
    g0target:="4F0-8b", g0map:="(x-1)/2",
    jlist:=[]>;
gl2tab["8D1-16d"]:=rec<g1gl2rec|
    label:="8D1-16d", genus:=1, sl2label:="8D1", gl2level:=16, sl2level:=8, index:=24, gl2id:=27746,
    gens:=[[7,0,0,7],[3,4,0,11],[0,3,5,0],[3,4,0,5],[2,1,1,2]],
    msubs:=["8H1-16f","8H1-16h"],
    msups:=["4F0-8b"],
    class:="256d", rank:=0>;
gl2tab["8E1-8a"]:=rec<g1gl2rec|
    label:="8E1-8a", genus:=1, sl2label:="8E1", gl2level:=8, sl2level:=8, index:=32, gl2id:=1855,
    gens:=[[3,0,0,3],[1,1,1,2],[3,3,0,5],[1,3,3,4]],
    msubs:=["8J1-16a","8J1-16b"],
    msups:=["4D0-8a","8F0-8a"],
    class:="32a", rank:=0>;
gl2tab["8E1-8b"]:=rec<g1gl2rec|
    label:="8E1-8b", genus:=1, sl2label:="8E1", gl2level:=8, sl2level:=8, index:=32, gl2id:=1852,
    gens:=[[3,0,0,3],[1,1,1,2],[3,3,0,5],[2,1,1,3]],
    msubs:=[],
    msups:=["4D0-4a","8F0-8a"],
    class:="64a", rank:=0>;
gl2tab["8F1-8a"]:=rec<g1gl2rec|
    label:="8F1-8a", genus:=1, sl2label:="8F1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1651,
    gens:=[[3,0,0,3],[5,0,0,5],[1,4,4,1],[0,1,1,0],[1,2,2,1]],
    msubs:=["8K1-8a"],
    msups:=["4G0-8e","8G0-8f","8H0-8f","8H0-8i","8B1-8f","8C1-8b","8C1-8k"],
    class:="64a", rank:=0>;
gl2tab["8F1-8b"]:=rec<g1gl2rec|
    label:="8F1-8b", genus:=1, sl2label:="8F1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1742,
    gens:=[[3,0,0,3],[5,0,0,5],[1,4,4,1],[0,1,1,0],[1,2,6,1]],
    msubs:=[],
    msups:=["4G0-8e","8G0-8k","8H0-8b","8H0-8j","8B1-8d","8C1-8f","8C1-8l"],
    class:="32a", rank:=0>;
gl2tab["8F1-8c"]:=rec<g1gl2rec|
    label:="8F1-8c", genus:=1, sl2label:="8F1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1713,
    gens:=[[3,0,0,3],[5,0,0,5],[1,4,4,1],[0,1,1,0],[2,3,5,2]],
    msubs:=[],
    msups:=["4G0-8a","8G0-8l","8H0-8h","8H0-8j","8B1-8l","8C1-8d","8C1-8k"],
    class:="64a", rank:=0>;
gl2tab["8F1-8d"]:=rec<g1gl2rec|
    label:="8F1-8d", genus:=1, sl2label:="8F1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1714,
    gens:=[[3,0,0,3],[5,0,0,5],[1,4,4,1],[0,1,1,0],[2,3,5,6]],
    msubs:=["8K1-16a"],
    msups:=["4G0-8a","8G0-8l","8H0-8d","8H0-8i","8B1-8k","8C1-8h","8C1-8l"],
    class:="32a", rank:=0>;
gl2tab["8F1-8e"]:=rec<g1gl2rec|
    label:="8F1-8e", genus:=1, sl2label:="8F1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1734,
    gens:=[[3,0,0,3],[5,0,0,5],[1,4,4,1],[1,0,0,3],[0,1,1,0]],
    msubs:=[],
    msups:=["4G0-8b","8G0-8l","8H0-8a","8H0-8f","8B1-8k","8C1-8c","8C1-8f"],
    class:="32a", rank:=0>;
gl2tab["8F1-8f"]:=rec<g1gl2rec|
    label:="8F1-8f", genus:=1, sl2label:="8F1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1683,
    gens:=[[3,0,0,3],[5,0,0,5],[1,4,4,1],[1,0,0,3],[1,0,0,5]],
    msubs:=["8K1-8l"],
    msups:=["4G0-4a","8G0-8e","8H0-8a","8H0-8e","8B1-8e","8C1-8a","8C1-8e"],
    class:="64a", rank:=0>;
gl2tab["8F1-8g"]:=rec<g1gl2rec|
    label:="8F1-8g", genus:=1, sl2label:="8F1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1685,
    gens:=[[3,0,0,3],[5,0,0,5],[1,4,4,1],[1,0,0,5],[0,1,1,0]],
    msubs:=[],
    msups:=["4G0-4b","8G0-8k","8H0-8a","8H0-8d","8B1-8f","8C1-8d","8C1-8e"],
    class:="64a", rank:=0>;
gl2tab["8F1-8h"]:=rec<g1gl2rec|
    label:="8F1-8h", genus:=1, sl2label:="8F1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1550,
    gens:=[[3,0,0,3],[5,0,0,5],[1,4,4,1],[1,2,0,3],[1,0,0,5]],
    msubs:=["8K1-8n","8K1-8o"],
    msups:=["4G0-4a","8G0-8b","8B1-8b"],
    class:="64a", rank:=0>;
gl2tab["8F1-8i"]:=rec<g1gl2rec|
    label:="8F1-8i", genus:=1, sl2label:="8F1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1733,
    gens:=[[3,0,0,3],[5,0,0,5],[1,4,4,1],[1,4,0,3],[0,1,1,0]],
    msubs:=["8K1-8f"],
    msups:=["4G0-8b","8G0-8l","8H0-8b","8H0-8g","8B1-8l","8C1-8b","8C1-8e"],
    class:="64a", rank:=0>;
gl2tab["8F1-8j"]:=rec<g1gl2rec|
    label:="8F1-8j", genus:=1, sl2label:="8F1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1732,
    gens:=[[3,0,0,3],[5,0,0,5],[1,4,4,1],[1,4,0,3],[1,4,0,5]],
    msubs:=["8K1-8b","8K1-8k"],
    msups:=["4G0-4a","8G0-8d","8H0-8c","8H0-8g","8B1-8c","8C1-8c","8C1-8g"],
    class:="32a", rank:=0>;
gl2tab["8F1-8k"]:=rec<g1gl2rec|
    label:="8F1-8k", genus:=1, sl2label:="8F1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1650,
    gens:=[[3,0,0,3],[5,0,0,5],[1,4,4,1],[1,4,0,5],[0,1,1,0]],
    msubs:=["8K1-8g","8K1-8p"],
    msups:=["4G0-4b","8G0-8f","8H0-8g","8H0-8h","8B1-8d","8C1-8c","8C1-8h"],
    class:="32a", rank:=0>;
gl2tab["8F1-8l"]:=rec<g1gl2rec|
    label:="8F1-8l", genus:=1, sl2label:="8F1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1745,
    gens:=[[3,0,0,3],[5,0,0,5],[1,4,4,1],[3,0,0,5],[0,1,3,0]],
    msubs:=["8K1-16b"],
    msups:=["4G0-8f","8G0-8i","8H0-8a","8H0-8k","8B1-8g","8C1-8g","8C1-8l"],
    class:="32a", rank:=0>;
gl2tab["8F1-8m"]:=rec<g1gl2rec|
    label:="8F1-8m", genus:=1, sl2label:="8F1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1648,
    gens:=[[3,0,0,3],[5,0,0,5],[1,4,4,1],[3,0,0,5],[0,1,3,4]],
    msubs:=["8K1-8c"],
    msups:=["4G0-8f","8G0-8h","8H0-8g","8H0-8l","8B1-8h","8C1-8a","8C1-8k"],
    class:="64a", rank:=0>;
gl2tab["8F1-8n"]:=rec<g1gl2rec|
    label:="8F1-8n", genus:=1, sl2label:="8F1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1715,
    gens:=[[3,0,0,3],[5,0,0,5],[1,4,4,1],[3,0,0,5],[1,2,2,1]],
    msubs:=[],
    msups:=["4G0-8d","8G0-8d","8H0-8i","8H0-8k","8B1-8e","8C1-8i","8C1-8k"],
    class:="64a", rank:=0>;
gl2tab["8F1-8o"]:=rec<g1gl2rec|
    label:="8F1-8o", genus:=1, sl2label:="8F1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1710,
    gens:=[[3,0,0,3],[5,0,0,5],[1,4,4,1],[3,0,0,5],[3,2,2,5]],
    msubs:=[],
    msups:=["4G0-8d","8G0-8e","8H0-8j","8H0-8l","8B1-8c","8C1-8j","8C1-8l"],
    class:="32a", rank:=0>;
gl2tab["8F1-8p"]:=rec<g1gl2rec|
    label:="8F1-8p", genus:=1, sl2label:="8F1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1563,
    gens:=[[3,0,0,3],[5,0,0,5],[1,4,4,1],[3,2,0,1],[1,4,0,5]],
    msubs:=["8K1-8h","8K1-8m"],
    msups:=["4G0-4a","8G0-8a","8B1-8a"],
    class:="32a", rank:=0>;
gl2tab["8F1-8q"]:=rec<g1gl2rec|
    label:="8F1-8q", genus:=1, sl2label:="8F1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1649,
    gens:=[[3,0,0,3],[5,0,0,5],[1,4,4,1],[3,4,0,5],[0,1,3,0]],
    msubs:=[],
    msups:=["4G0-8f","8G0-8h","8H0-8e","8H0-8i","8B1-8g","8C1-8c","8C1-8j"],
    class:="32a", rank:=0>;
gl2tab["8F1-8r"]:=rec<g1gl2rec|
    label:="8F1-8r", genus:=1, sl2label:="8F1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1746,
    gens:=[[3,0,0,3],[5,0,0,5],[1,4,4,1],[3,4,0,5],[0,1,3,4]],
    msubs:=[],
    msups:=["4G0-8f","8G0-8i","8H0-8c","8H0-8j","8B1-8h","8C1-8e","8C1-8i"],
    class:="64a", rank:=0>;
gl2tab["8F1-8s"]:=rec<g1gl2rec|
    label:="8F1-8s", genus:=1, sl2label:="8F1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1562,
    gens:=[[3,0,0,3],[5,0,0,5],[1,4,4,1],[5,2,0,3],[1,2,2,1]],
    msubs:=["8K1-8d","8K1-8j"],
    msups:=["4G0-8c","8G0-8a","8B1-8b"],
    class:="64a", rank:=0>;
gl2tab["8F1-8t"]:=rec<g1gl2rec|
    label:="8F1-8t", genus:=1, sl2label:="8F1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1561,
    gens:=[[3,0,0,3],[5,0,0,5],[1,4,4,1],[5,2,0,3],[3,0,2,1]],
    msubs:=["8K1-8e","8K1-8i"],
    msups:=["4G0-8c","8G0-8b","8B1-8a"],
    class:="32a", rank:=0>;
gl2tab["8G1-16a"]:=rec<g1gl2rec|
    label:="8G1-16a", genus:=1, sl2label:="8G1", gl2level:=16, sl2level:=8, index:=48, gl2id:=26896,
    gens:=[[1,4,0,1],[7,0,0,7],[9,0,0,9],[3,2,4,3],[7,0,0,9],[1,3,2,1]],
    msubs:=[],
    msups:=["8B1-8j"],
    class:="32a", rank:=0>;
gl2tab["8G1-8a"]:=rec<g1gl2rec|
    label:="8G1-8a", genus:=1, sl2label:="8G1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1830,
    gens:=[[7,0,0,7],[3,2,4,3],[1,0,0,3],[1,0,0,5]],
    msubs:=["8K1-8i","8K1-8m"],
    msups:=["8J0-8c","8L0-8b","8B1-8a"],
    class:="32a", rank:=0>;
gl2tab["8G1-8b"]:=rec<g1gl2rec|
    label:="8G1-8b", genus:=1, sl2label:="8G1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1774,
    gens:=[[7,0,0,7],[3,2,4,3],[1,0,0,3],[3,2,0,5]],
    msubs:=["8K1-8d","8K1-8o"],
    msups:=["8J0-8c","8J0-8d","8B1-8b"],
    class:="64a", rank:=0>;
gl2tab["8G1-8c"]:=rec<g1gl2rec|
    label:="8G1-8c", genus:=1, sl2label:="8G1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1839,
    gens:=[[7,0,0,7],[3,2,4,3],[1,0,0,7],[1,3,2,3]],
    msubs:=[],
    msups:=["8L0-8a","8L0-8b","8B1-8i"],
    class:="64a", rank:=0>;
gl2tab["8G1-8d"]:=rec<g1gl2rec|
    label:="8G1-8d", genus:=1, sl2label:="8G1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1635,
    gens:=[[7,0,0,7],[3,2,4,3],[3,0,0,1],[5,0,0,1]],
    msubs:=["8K1-8e","8K1-8h"],
    msups:=["8J0-8b","8L0-8a","8B1-8a"],
    class:="32a", rank:=0>;
gl2tab["8G1-8e"]:=rec<g1gl2rec|
    label:="8G1-8e", genus:=1, sl2label:="8G1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1582,
    gens:=[[7,0,0,7],[3,2,4,3],[3,0,0,1],[5,2,0,1]],
    msubs:=["8K1-8j","8K1-8n"],
    msups:=["8J0-8a","8J0-8b","8B1-8b"],
    class:="64a", rank:=0>;
gl2tab["8G1-8f"]:=rec<g1gl2rec|
    label:="8G1-8f", genus:=1, sl2label:="8G1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1632,
    gens:=[[7,0,0,7],[3,2,4,3],[3,2,0,1],[1,0,0,5]],
    msubs:=["8K1-8e","8K1-8m"],
    msups:=["8J0-8a","8J0-8c","8B1-8a"],
    class:="32a", rank:=0>;
gl2tab["8G1-8g"]:=rec<g1gl2rec|
    label:="8G1-8g", genus:=1, sl2label:="8G1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1633,
    gens:=[[7,0,0,7],[3,2,4,3],[3,2,0,1],[5,0,0,1]],
    msubs:=["8K1-8h","8K1-8i"],
    msups:=["8J0-8b","8J0-8d","8B1-8a"],
    class:="32a", rank:=0>;
gl2tab["8G1-8h"]:=rec<g1gl2rec|
    label:="8G1-8h", genus:=1, sl2label:="8G1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1608,
    gens:=[[7,0,0,7],[3,2,4,3],[3,2,0,1],[5,2,0,1]],
    msubs:=["8K1-8d","8K1-8j","8K1-8n","8K1-8o"],
    msups:=["8J0-8b","8J0-8c","8B1-8b"],
    class:="64a", rank:=0>;
gl2tab["8H1-16a"]:=rec<g1gl2rec|
    label:="8H1-16a", genus:=1, sl2label:="8H1", gl2level:=16, sl2level:=8, index:=48, gl2id:=27175,
    gens:=[[7,0,0,7],[1,8,0,1],[1,4,4,1],[0,3,5,0],[3,0,0,5],[1,2,2,1]],
    msubs:=[],
    msups:=["8H0-8i","8K0-16a","8D1-16a"],
    class:="256d", rank:=0>;
gl2tab["8H1-16b"]:=rec<g1gl2rec|
    label:="8H1-16b", genus:=1, sl2label:="8H1", gl2level:=16, sl2level:=8, index:=48, gl2id:=27183,
    gens:=[[7,0,0,7],[1,8,0,1],[1,4,4,1],[0,3,5,0],[3,0,0,5],[1,2,2,9]],
    msubs:=[],
    msups:=["8H0-8i","8K0-16c","8D1-16b"],
    class:="256a", rank:=1, curve:="256a2",
    product:=<<"8H1-16b","8H0-8i","8K0-16c","4F0-8b">,<1/2*x+3/2,1/2*y/(x+3),(1/2*t^2+1)/t,t^2+2>>,
    g0target:="8H0-8i", g0map:="(x+3)/2",
    jlist:=[4869777375/92236816]>;
gl2tab["8H1-16c"]:=rec<g1gl2rec|
    label:="8H1-16c", genus:=1, sl2label:="8H1", gl2level:=16, sl2level:=8, index:=48, gl2id:=27287,
    gens:=[[7,0,0,7],[1,8,0,1],[1,4,4,1],[0,3,5,0],[3,0,0,5],[1,2,6,9]],
    msubs:=[],
    msups:=["8H0-8j","8K0-16a","8D1-16b"],
    class:="256a", rank:=1, curve:="256a2",
    product:=<<"8H1-16c","8H0-8j","8K0-16a","4F0-8b">,<(x-1)/(x+3),4*y/(x^2-2*x-7),(2*t^2+2)/(t^2+2*t-1),1/2*t^2+2>>,
    g0target:="8H0-8j", g0map:="(x-1)/(x+3)",
    jlist:=[-881422385472/5764801]>;
gl2tab["8H1-16d"]:=rec<g1gl2rec|
    label:="8H1-16d", genus:=1, sl2label:="8H1", gl2level:=16, sl2level:=8, index:=48, gl2id:=27275,
    gens:=[[7,0,0,7],[1,8,0,1],[1,4,4,1],[0,3,5,0],[3,0,0,5],[2,3,5,2]],
    msubs:=[],
    msups:=["8H0-8j","8K0-16c","8D1-16a"],
    class:="256d", rank:=0>;
gl2tab["8H1-16e"]:=rec<g1gl2rec|
    label:="8H1-16e", genus:=1, sl2label:="8H1", gl2level:=16, sl2level:=8, index:=48, gl2id:=27184,
    gens:=[[7,0,0,7],[1,8,0,1],[1,4,4,1],[0,3,5,0],[7,0,0,9],[1,2,2,1]],
    msubs:=[],
    msups:=["8H0-8i","8K0-16b","8D1-16c"],
    class:="256a", rank:=1, curve:="256a1",
    product:=<<"8H1-16e","8H0-8i","8K0-16b","4F0-8b">,<x-1,y/(x-1),(1/2*t^2+1)/t,1/2*t^2-2>>,
    g0target:="8H0-8i", g0map:="x-1",
    jlist:=[-631595585199146625/218340105584896]>;
gl2tab["8H1-16f"]:=rec<g1gl2rec|
    label:="8H1-16f", genus:=1, sl2label:="8H1", gl2level:=16, sl2level:=8, index:=48, gl2id:=27176,
    gens:=[[7,0,0,7],[1,8,0,1],[1,4,4,1],[0,3,5,0],[7,0,0,9],[2,1,1,2]],
    msubs:=[],
    msups:=["8H0-8i","8K0-16d","8D1-16d"],
    class:="256d", rank:=0>;
gl2tab["8H1-16g"]:=rec<g1gl2rec|
    label:="8H1-16g", genus:=1, sl2label:="8H1", gl2level:=16, sl2level:=8, index:=48, gl2id:=27288,
    gens:=[[7,0,0,7],[1,8,0,1],[1,4,4,1],[0,3,5,0],[7,0,0,9],[2,3,5,2]],
    msubs:=[],
    msups:=["8H0-8j","8K0-16d","8D1-16c"],
    class:="256a", rank:=1, curve:="256a1",
    product:=<<"8H1-16g","8H0-8j","8K0-16d","4F0-8b">,<-1/x,-2*y/(x^2+2*x-1),(2*t^2+2)/(t^2+2*t-1),t^2-2>>,
    g0target:="8H0-8j", g0map:="-1/x",
    jlist:=[694158673008354922047168/4916747105530914241]>;
gl2tab["8H1-16h"]:=rec<g1gl2rec|
    label:="8H1-16h", genus:=1, sl2label:="8H1", gl2level:=16, sl2level:=8, index:=48, gl2id:=27276,
    gens:=[[7,0,0,7],[1,8,0,1],[1,4,4,1],[0,3,5,0],[7,0,0,9],[3,2,2,5]],
    msubs:=[],
    msups:=["8H0-8j","8K0-16b","8D1-16d"],
    class:="256d", rank:=0>;
gl2tab["8H1-16i"]:=rec<g1gl2rec|
    label:="8H1-16i", genus:=1, sl2label:="8H1", gl2level:=16, sl2level:=8, index:=48, gl2id:=27278,
    gens:=[[7,0,0,7],[1,8,0,1],[1,4,4,1],[0,3,5,0],[7,4,0,9],[1,2,2,1]],
    msubs:=[],
    msups:=["8H0-8k","8K0-16b","8D1-16a"],
    class:="256d", rank:=0>;
gl2tab["8H1-16j"]:=rec<g1gl2rec|
    label:="8H1-16j", genus:=1, sl2label:="8H1", gl2level:=16, sl2level:=8, index:=48, gl2id:=27290,
    gens:=[[7,0,0,7],[1,8,0,1],[1,4,4,1],[0,3,5,0],[7,4,0,9],[1,2,2,9]],
    msubs:=[],
    msups:=["8H0-8k","8K0-16d","8D1-16b"],
    class:="256a", rank:=1, curve:="256a2",
    product:=<<"8H1-16j","8H0-8k","8K0-16d","4F0-8b">,<(2*x+2*y+2)/(x^2-2*x-11),(x^3+x^2*y-5*x^2-x-13*y+53)/(x^3-x^2*y-5*x^2+2*x*y-9*x+7*y+29),(t^2+2*t-1)/(t^2+1),t^2-2>>,
    g0target:="8H0-8k", g0map:="2*(x+y+1)/(x^2-2*x-11)",
    jlist:=[3751731530276504323824/2724905250390625]>;
gl2tab["8H1-16k"]:=rec<g1gl2rec|
    label:="8H1-16k", genus:=1, sl2label:="8H1", gl2level:=16, sl2level:=8, index:=48, gl2id:=27181,
    gens:=[[7,0,0,7],[1,8,0,1],[1,4,4,1],[0,3,5,0],[7,4,0,9],[1,2,6,9]],
    msubs:=[],
    msups:=["8H0-8l","8K0-16b","8D1-16b"],
    class:="256a", rank:=1, curve:="256a2",
    product:=<<"8H1-16k","8H0-8l","8K0-16b","4F0-8b">,<(4*x-4*y+12)/(x^2-2*x-15),(2*x^3-2*x^2*y-14*x^2+8*x*y-26*x+26*y+102)/(x^3+x^2*y-7*x^2-2*x*y+3*x-23*y+99),4*t/(t^2+2),1/2*t^2-2>>,
    g0target:="8H0-8l", g0map:="4*(x-y+3)/(x^2-2*x-15)",
    jlist:=[211356067163994965416946562753796444740030796385335275709380288/1680859935980023414059923063490859488143512695462940288321]>;
gl2tab["8H1-16l"]:=rec<g1gl2rec|
    label:="8H1-16l", genus:=1, sl2label:="8H1", gl2level:=16, sl2level:=8, index:=48, gl2id:=27174,
    gens:=[[7,0,0,7],[1,8,0,1],[1,4,4,1],[0,3,5,0],[7,4,0,9],[2,1,1,2]],
    msubs:=[],
    msups:=["8H0-8l","8K0-16d","8D1-16a"],
    class:="256d", rank:=0>;
gl2tab["8I1-8a"]:=rec<g1gl2rec|
    label:="8I1-8a", genus:=1, sl2label:="8I1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1842,
    gens:=[[3,0,0,3],[0,3,5,0],[1,0,0,3],[1,0,0,5]],
    msubs:=[],
    msups:=["8H0-8a"],
    class:="32a", rank:=0>;
gl2tab["8I1-8b"]:=rec<g1gl2rec|
    label:="8I1-8b", genus:=1, sl2label:="8I1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1849,
    gens:=[[3,0,0,3],[0,3,5,0],[1,0,0,5],[1,2,2,3]],
    msubs:=[],
    msups:=["8H0-8d"],
    class:="32a", rank:=0>;
gl2tab["8I1-8c"]:=rec<g1gl2rec|
    label:="8I1-8c", genus:=1, sl2label:="8I1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1848,
    gens:=[[3,0,0,3],[0,3,5,0],[1,2,2,3],[4,1,3,4]],
    msubs:=[],
    msups:=["8F0-8a","8H0-8d"],
    class:="64a", rank:=0>;
gl2tab["8I1-8d"]:=rec<g1gl2rec|
    label:="8I1-8d", genus:=1, sl2label:="8I1", gl2level:=8, sl2level:=8, index:=48, gl2id:=1841,
    gens:=[[3,0,0,3],[0,3,5,0],[3,0,0,5],[1,4,4,3]],
    msubs:=[],
    msups:=["8H0-8a"],
    class:="64a", rank:=0>;
gl2tab["8J1-16a"]:=rec<g1gl2rec|
    label:="8J1-16a", genus:=1, sl2label:="8J1", gl2level:=16, sl2level:=8, index:=64, gl2id:=25456,
    gens:=[[1,8,0,1],[3,3,11,6],[3,3,0,5],[3,1,1,4]],
    msubs:=[],
    msups:=["8E0-16b","8E1-8a"],
    class:="32a", rank:=0>;
gl2tab["8J1-16b"]:=rec<g1gl2rec|
    label:="8J1-16b", genus:=1, sl2label:="8J1", gl2level:=16, sl2level:=8, index:=64, gl2id:=25457,
    gens:=[[1,8,0,1],[3,3,11,6],[7,7,0,9],[1,3,3,4]],
    msubs:=[],
    msups:=["8E0-16a","8E1-8a"],
    class:="32a", rank:=0>;
gl2tab["8K1-16a"]:=rec<g1gl2rec|
    label:="8K1-16a", genus:=1, sl2label:="8K1", gl2level:=16, sl2level:=8, index:=96, gl2id:=24196,
    gens:=[[7,0,0,7],[1,8,0,1],[9,0,0,9],[3,4,4,11],[0,1,1,0],[2,3,5,6]],
    msubs:=[],
    msups:=["8F1-8d"],
    class:="32a", rank:=0>;
gl2tab["8K1-16b"]:=rec<g1gl2rec|
    label:="8K1-16b", genus:=1, sl2label:="8K1", gl2level:=16, sl2level:=8, index:=96, gl2id:=24205,
    gens:=[[7,0,0,7],[1,8,0,1],[9,0,0,9],[3,4,4,11],[3,4,0,5],[2,1,1,6]],
    msubs:=[],
    msups:=["8F1-8l"],
    class:="32a", rank:=0>;
gl2tab["8K1-8a"]:=rec<g1gl2rec|
    label:="8K1-8a", genus:=1, sl2label:="8K1", gl2level:=8, sl2level:=8, index:=96, gl2id:=921,
    gens:=[[7,0,0,7],[3,4,4,3],[0,1,1,0],[1,2,2,1]],
    msubs:=[],
    msups:=["8O0-8f","8O0-8g","8F1-8a"],
    class:="64a", rank:=0>;
gl2tab["8K1-8b"]:=rec<g1gl2rec|
    label:="8K1-8b", genus:=1, sl2label:="8K1", gl2level:=8, sl2level:=8, index:=96, gl2id:=1183,
    gens:=[[7,0,0,7],[3,4,4,3],[1,0,0,3],[3,4,0,5]],
    msubs:=[],
    msups:=["8N0-8c","8P0-8b","8F1-8j"],
    class:="32a", rank:=0>;
gl2tab["8K1-8c"]:=rec<g1gl2rec|
    label:="8K1-8c", genus:=1, sl2label:="8K1", gl2level:=8, sl2level:=8, index:=96, gl2id:=919,
    gens:=[[7,0,0,7],[3,4,4,3],[1,0,0,7],[0,3,1,4]],
    msubs:=[],
    msups:=["8P0-8a","8P0-8b","8F1-8m"],
    class:="64a", rank:=0>;
gl2tab["8K1-8d"]:=rec<g1gl2rec|
    label:="8K1-8d", genus:=1, sl2label:="8K1", gl2level:=8, sl2level:=8, index:=96, gl2id:=1163,
    gens:=[[7,0,0,7],[3,4,4,3],[1,2,0,7],[1,2,2,1]],
    msubs:=[],
    msups:=["8N0-8b","8N0-8d","8O0-8b","8O0-8d","8F1-8s","8G1-8b","8G1-8h"],
    class:="64a", rank:=0>;
gl2tab["8K1-8e"]:=rec<g1gl2rec|
    label:="8K1-8e", genus:=1, sl2label:="8K1", gl2level:=8, sl2level:=8, index:=96, gl2id:=869,
    gens:=[[7,0,0,7],[3,4,4,3],[1,2,0,7],[3,0,2,1]],
    msubs:=[],
    msups:=["8N0-8b","8N0-8e","8O0-8a","8O0-8i","8F1-8t","8G1-8d","8G1-8f"],
    class:="32a", rank:=0>;
gl2tab["8K1-8f"]:=rec<g1gl2rec|
    label:="8K1-8f", genus:=1, sl2label:="8K1", gl2level:=8, sl2level:=8, index:=96, gl2id:=1182,
    gens:=[[7,0,0,7],[3,4,4,3],[1,4,0,3],[0,1,1,0]],
    msubs:=[],
    msups:=["8P0-8a","8P0-8b","8F1-8i"],
    class:="64a", rank:=0>;
gl2tab["8K1-8g"]:=rec<g1gl2rec|
    label:="8K1-8g", genus:=1, sl2label:="8K1", gl2level:=8, sl2level:=8, index:=96, gl2id:=922,
    gens:=[[7,0,0,7],[3,4,4,3],[1,4,0,5],[0,1,1,0]],
    msubs:=[],
    msups:=["8O0-8g","8P0-8a","8F1-8k"],
    class:="32a", rank:=0>;
gl2tab["8K1-8h"]:=rec<g1gl2rec|
    label:="8K1-8h", genus:=1, sl2label:="8K1", gl2level:=8, sl2level:=8, index:=96, gl2id:=873,
    gens:=[[7,0,0,7],[3,4,4,3],[1,4,0,5],[1,6,0,3]],
    msubs:=[],
    msups:=["8N0-8c","8N0-8f","8O0-8d","8O0-8e","8F1-8p","8G1-8d","8G1-8g"],
    class:="32a", rank:=0>;
gl2tab["8K1-8i"]:=rec<g1gl2rec|
    label:="8K1-8i", genus:=1, sl2label:="8K1", gl2level:=8, sl2level:=8, index:=96, gl2id:=1159,
    gens:=[[7,0,0,7],[3,4,4,3],[1,6,0,7],[1,0,2,3]],
    msubs:=[],
    msups:=["8N0-8b","8N0-8d","8O0-8a","8O0-8j","8F1-8t","8G1-8a","8G1-8g"],
    class:="32a", rank:=0>;
gl2tab["8K1-8j"]:=rec<g1gl2rec|
    label:="8K1-8j", genus:=1, sl2label:="8K1", gl2level:=8, sl2level:=8, index:=96, gl2id:=874,
    gens:=[[7,0,0,7],[3,4,4,3],[1,6,0,7],[1,2,2,1]],
    msubs:=[],
    msups:=["8N0-8b","8N0-8e","8O0-8c","8O0-8e","8F1-8s","8G1-8e","8G1-8h"],
    class:="64a", rank:=0>;
gl2tab["8K1-8k"]:=rec<g1gl2rec|
    label:="8K1-8k", genus:=1, sl2label:="8K1", gl2level:=8, sl2level:=8, index:=96, gl2id:=1181,
    gens:=[[7,0,0,7],[3,4,4,3],[3,0,0,1],[1,4,0,5]],
    msubs:=[],
    msups:=["8N0-8a","8P0-8a","8F1-8j"],
    class:="32a", rank:=0>;
gl2tab["8K1-8l"]:=rec<g1gl2rec|
    label:="8K1-8l", genus:=1, sl2label:="8K1", gl2level:=8, sl2level:=8, index:=96, gl2id:=997,
    gens:=[[7,0,0,7],[3,4,4,3],[3,0,0,1],[5,0,0,1]],
    msubs:=[],
    msups:=["8N0-8a","8N0-8c","8F1-8f"],
    class:="64a", rank:=0>;
gl2tab["8K1-8m"]:=rec<g1gl2rec|
    label:="8K1-8m", genus:=1, sl2label:="8K1", gl2level:=8, sl2level:=8, index:=96, gl2id:=1162,
    gens:=[[7,0,0,7],[3,4,4,3],[3,2,0,1],[5,4,0,1]],
    msubs:=[],
    msups:=["8N0-8a","8N0-8f","8O0-8b","8O0-8c","8F1-8p","8G1-8a","8G1-8f"],
    class:="32a", rank:=0>;
gl2tab["8K1-8n"]:=rec<g1gl2rec|
    label:="8K1-8n", genus:=1, sl2label:="8K1", gl2level:=8, sl2level:=8, index:=96, gl2id:=810,
    gens:=[[7,0,0,7],[3,4,4,3],[5,0,0,1],[3,0,2,1]],
    msubs:=[],
    msups:=["8N0-8a","8N0-8f","8O0-8a","8O0-8i","8F1-8h","8G1-8e","8G1-8h"],
    class:="64a", rank:=0>;
gl2tab["8K1-8o"]:=rec<g1gl2rec|
    label:="8K1-8o", genus:=1, sl2label:="8K1", gl2level:=8, sl2level:=8, index:=96, gl2id:=995,
    gens:=[[7,0,0,7],[3,4,4,3],[5,0,0,1],[3,6,0,1]],
    msubs:=[],
    msups:=["8N0-8c","8N0-8f","8O0-8a","8O0-8j","8F1-8h","8G1-8b","8G1-8h"],
    class:="64a", rank:=0>;
gl2tab["8K1-8p"]:=rec<g1gl2rec|
    label:="8K1-8p", genus:=1, sl2label:="8K1", gl2level:=8, sl2level:=8, index:=96, gl2id:=920,
    gens:=[[7,0,0,7],[3,4,4,3],[5,4,0,1],[2,1,1,2]],
    msubs:=[],
    msups:=["8O0-8f","8P0-8b","8F1-8k"],
    class:="32a", rank:=0>;
gl2tab["16A1-16a"]:=rec<g1gl2rec|
    label:="16A1-16a", genus:=1, sl2label:="16A1", gl2level:=16, sl2level:=16, index:=24, gl2id:=27486,
    gens:=[[7,0,0,7],[3,8,0,11],[0,5,3,6],[1,2,0,3],[1,4,0,5]],
    msubs:=["16E1-16a","16E1-16j"],
    msups:=["8C0-8b"],
    class:="64a", rank:=0>;
gl2tab["16A1-16b"]:=rec<g1gl2rec|
    label:="16A1-16b", genus:=1, sl2label:="16A1", gl2level:=16, sl2level:=16, index:=24, gl2id:=27485,
    gens:=[[7,0,0,7],[3,8,0,11],[0,5,3,6],[1,2,0,3],[5,4,0,1]],
    msubs:=["16E1-16b","16E1-16k"],
    msups:=["8C0-8b"],
    class:="32a", rank:=0>;
gl2tab["16A1-16c"]:=rec<g1gl2rec|
    label:="16A1-16c", genus:=1, sl2label:="16A1", gl2level:=16, sl2level:=16, index:=24, gl2id:=27416,
    gens:=[[7,0,0,7],[3,8,0,11],[0,5,3,6],[1,4,0,5],[5,2,0,3]],
    msubs:=["16E1-16c","16E1-16f","16E1-16g","16E1-16l","16G1-16a","16G1-16b","16G1-16c","16G1-16e","16G1-16h","16G1-16i"],
    msups:=["8C0-8d"],
    class:="64a", rank:=0>;
gl2tab["16A1-16d"]:=rec<g1gl2rec|
    label:="16A1-16d", genus:=1, sl2label:="16A1", gl2level:=16, sl2level:=16, index:=24, gl2id:=27417,
    gens:=[[7,0,0,7],[3,8,0,11],[0,5,3,6],[3,2,0,1],[5,2,0,3]],
    msubs:=["16E1-16d","16E1-16e","16E1-16h","16E1-16i","16G1-16d","16G1-16f","16G1-16g","16G1-16j","16G1-16k","16G1-16l"],
    msups:=["8C0-8d"],
    class:="32a", rank:=0>;
gl2tab["16B1-16a"]:=rec<g1gl2rec|
    label:="16B1-16a", genus:=1, sl2label:="16B1", gl2level:=16, sl2level:=16, index:=24, gl2id:=27738,
    gens:=[[3,0,0,11],[0,3,5,0],[2,3,9,6],[1,0,0,3],[1,0,0,5]],
    msubs:=["16F1-16a","16F1-16h"],
    msups:=["8B0-8a"],
    class:="256b", rank:=1, curve:="256b2",
    g0target:="8B0-8a", g0map:="x/4",
    jlist:=[]>;
gl2tab["16B1-16b"]:=rec<g1gl2rec|
    label:="16B1-16b", genus:=1, sl2label:="16B1", gl2level:=16, sl2level:=16, index:=24, gl2id:=27744,
    gens:=[[3,0,0,11],[0,3,5,0],[2,3,9,6],[1,0,0,3],[1,8,0,5]],
    msubs:=["16F1-16b","16F1-16i"],
    msups:=["8B0-8a"],
    class:="256c", rank:=0>;
gl2tab["16B1-16c"]:=rec<g1gl2rec|
    label:="16B1-16c", genus:=1, sl2label:="16B1", gl2level:=16, sl2level:=16, index:=24, gl2id:=27743,
    gens:=[[3,0,0,11],[0,3,5,0],[2,3,9,6],[1,4,0,3],[1,0,0,5]],
    msubs:=["16F1-16c","16F1-16d","16F1-16j","16F1-16k"],
    msups:=["8B0-8a"],
    class:="256b", rank:=1, curve:="256b1",
    g0target:="8B0-8a", g0map:="x/2",
    jlist:=[]>;
gl2tab["16B1-16d"]:=rec<g1gl2rec|
    label:="16B1-16d", genus:=1, sl2label:="16B1", gl2level:=16, sl2level:=16, index:=24, gl2id:=27741,
    gens:=[[3,0,0,11],[0,3,5,0],[2,3,9,6],[1,4,0,3],[3,4,0,5]],
    msubs:=["16F1-16e","16F1-16f","16F1-16g","16F1-16l"],
    msups:=["8B0-8a"],
    class:="256c", rank:=0>;
gl2tab["16C1-16a"]:=rec<g1gl2rec|
    label:="16C1-16a", genus:=1, sl2label:="16C1", gl2level:=16, sl2level:=16, index:=24, gl2id:=27687,
    gens:=[[2,1,3,2],[0,3,5,8],[1,0,0,3],[1,0,0,5]],
    msubs:=["16I1-16a","16I1-16b","16I1-16e","16I1-16l"],
    msups:=["8D0-8a"],
    class:="256d", rank:=0>;
gl2tab["16C1-16b"]:=rec<g1gl2rec|
    label:="16C1-16b", genus:=1, sl2label:="16C1", gl2level:=16, sl2level:=16, index:=24, gl2id:=27685,
    gens:=[[2,1,3,2],[0,3,5,8],[1,0,0,3],[1,8,0,5]],
    msubs:=["16I1-16c","16I1-16i"],
    msups:=["8D0-8a"],
    class:="256d", rank:=0>;
gl2tab["16C1-16c"]:=rec<g1gl2rec|
    label:="16C1-16c", genus:=1, sl2label:="16C1", gl2level:=16, sl2level:=16, index:=24, gl2id:=27688,
    gens:=[[2,1,3,2],[0,3,5,8],[1,0,0,5],[1,8,0,3]],
    msubs:=["16I1-16d","16I1-16h"],
    msups:=["8D0-8a"],
    class:="256a", rank:=1, curve:="256a2",
    g0target:="8D0-8a", g0map:="(x-1)/2",
    jlist:=[]>;
gl2tab["16C1-16d"]:=rec<g1gl2rec|
    label:="16C1-16d", genus:=1, sl2label:="16C1", gl2level:=16, sl2level:=16, index:=24, gl2id:=27686,
    gens:=[[2,1,3,2],[0,3,5,8],[3,0,0,5],[1,8,0,3]],
    msubs:=["16I1-16f","16I1-16g","16I1-16j","16I1-16k"],
    msups:=["8D0-8a"],
    class:="256a", rank:=1, curve:="256a1",
    g0target:="8D0-8a", g0map:="x+1",
    jlist:=[]>;
gl2tab["16D1-16a"]:=rec<g1gl2rec|
    label:="16D1-16a", genus:=1, sl2label:="16D1", gl2level:=16, sl2level:=16, index:=24, gl2id:=27729,
    gens:=[[3,8,0,11],[0,3,5,0],[5,2,2,1],[1,2,0,3],[1,4,0,5]],
    msubs:=["16J1-16a","16J1-16d"],
    msups:=["8B0-8d"],
    class:="128d", rank:=0>;
gl2tab["16D1-16b"]:=rec<g1gl2rec|
    label:="16D1-16b", genus:=1, sl2label:="16D1", gl2level:=16, sl2level:=16, index:=24, gl2id:=27730,
    gens:=[[3,8,0,11],[0,3,5,0],[5,2,2,1],[1,2,0,3],[5,4,0,1]],
    msubs:=["16J1-16b","16J1-16h"],
    msups:=["8B0-8d"],
    class:="128c", rank:=0>;
gl2tab["16D1-16c"]:=rec<g1gl2rec|
    label:="16D1-16c", genus:=1, sl2label:="16D1", gl2level:=16, sl2level:=16, index:=24, gl2id:=27731,
    gens:=[[3,8,0,11],[0,3,5,0],[5,2,2,1],[1,4,0,5],[3,6,0,1]],
    msubs:=["16J1-16c","16J1-16f"],
    msups:=["8B0-8d"],
    class:="128b", rank:=0>;
gl2tab["16D1-16d"]:=rec<g1gl2rec|
    label:="16D1-16d", genus:=1, sl2label:="16D1", gl2level:=16, sl2level:=16, index:=24, gl2id:=27732,
    gens:=[[3,8,0,11],[0,3,5,0],[5,2,2,1],[3,2,0,5],[5,4,0,1]],
    msubs:=["16J1-16e","16J1-16g"],
    msups:=["8B0-8d"],
    class:="128a", rank:=1, curve:="128a1",
    g0target:="8B0-8d", g0map:="(x+1)/2",
    jlist:=[]>;
gl2tab["16E1-16a"]:=rec<g1gl2rec|
    label:="16E1-16a", genus:=1, sl2label:="16E1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26176,
    gens:=[[7,0,0,7],[3,0,0,11],[1,2,8,1],[1,0,0,3],[1,0,0,5]],
    msubs:=["16M1-16a","16M1-16m"],
    msups:=["8G0-8a","16C0-16a","16A1-16a"],
    class:="64a", rank:=0>;
gl2tab["16E1-16b"]:=rec<g1gl2rec|
    label:="16E1-16b", genus:=1, sl2label:="16E1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26179,
    gens:=[[7,0,0,7],[3,0,0,11],[1,2,8,1],[1,0,0,3],[1,2,0,5]],
    msubs:=["16M1-16h","16M1-16o"],
    msups:=["8G0-8a","16C0-16b","16A1-16b"],
    class:="32a", rank:=0>;
gl2tab["16E1-16c"]:=rec<g1gl2rec|
    label:="16E1-16c", genus:=1, sl2label:="16E1", gl2level:=16, sl2level:=16, index:=48, gl2id:=25985,
    gens:=[[7,0,0,7],[3,0,0,11],[1,2,8,1],[1,0,0,5],[1,0,4,3]],
    msubs:=["16M1-16b","16M1-16s"],
    msups:=["8G0-8a","16C0-16c","16A1-16c"],
    class:="64a", rank:=0>;
gl2tab["16E1-16d"]:=rec<g1gl2rec|
    label:="16E1-16d", genus:=1, sl2label:="16E1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26087,
    gens:=[[7,0,0,7],[3,0,0,11],[1,2,8,1],[1,1,0,3],[1,3,4,1]],
    msubs:=["16M1-16e","16M1-16p"],
    msups:=["8G0-8g","16C0-16c","16A1-16d"],
    class:="32a", rank:=0>;
gl2tab["16E1-16e"]:=rec<g1gl2rec|
    label:="16E1-16e", genus:=1, sl2label:="16E1", gl2level:=16, sl2level:=16, index:=48, gl2id:=25983,
    gens:=[[7,0,0,7],[3,0,0,11],[1,2,8,1],[1,2,0,5],[1,0,4,3]],
    msubs:=["16M1-16i","16M1-16t"],
    msups:=["8G0-8a","16C0-16d","16A1-16d"],
    class:="32a", rank:=0>;
gl2tab["16E1-16f"]:=rec<g1gl2rec|
    label:="16E1-16f", genus:=1, sl2label:="16E1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26086,
    gens:=[[7,0,0,7],[3,0,0,11],[1,2,8,1],[1,3,0,3],[1,0,0,5]],
    msubs:=["16M1-16c","16M1-16q"],
    msups:=["8G0-8f","16C0-16c","16A1-16c"],
    class:="64a", rank:=0>;
gl2tab["16E1-16g"]:=rec<g1gl2rec|
    label:="16E1-16g", genus:=1, sl2label:="16E1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26085,
    gens:=[[7,0,0,7],[3,0,0,11],[1,2,8,1],[1,3,0,3],[1,1,4,1]],
    msubs:=["16M1-16j","16M1-16n"],
    msups:=["8G0-8g","16C0-16d","16A1-16c"],
    class:="64a", rank:=0>;
gl2tab["16E1-16h"]:=rec<g1gl2rec|
    label:="16E1-16h", genus:=1, sl2label:="16E1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26084,
    gens:=[[7,0,0,7],[3,0,0,11],[1,2,8,1],[1,3,0,3],[1,2,0,5]],
    msubs:=["16M1-16d","16M1-16r"],
    msups:=["8G0-8f","16C0-16d","16A1-16d"],
    class:="32a", rank:=0>;
gl2tab["16E1-16i"]:=rec<g1gl2rec|
    label:="16E1-16i", genus:=1, sl2label:="16E1", gl2level:=16, sl2level:=16, index:=48, gl2id:=25984,
    gens:=[[7,0,0,7],[3,0,0,11],[1,2,8,1],[3,1,0,5],[1,0,4,3]],
    msubs:=["16M1-16g","16M1-16k"],
    msups:=["8G0-8c","16C0-16c","16A1-16d"],
    class:="32a", rank:=0>;
gl2tab["16E1-16j"]:=rec<g1gl2rec|
    label:="16E1-16j", genus:=1, sl2label:="16E1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26183,
    gens:=[[7,0,0,7],[3,0,0,11],[1,2,8,1],[3,2,0,5],[1,1,4,1]],
    msubs:=[],
    msups:=["8G0-8j","16C0-16b","16A1-16a"],
    class:="64a", rank:=0>;
gl2tab["16E1-16k"]:=rec<g1gl2rec|
    label:="16E1-16k", genus:=1, sl2label:="16E1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26181,
    gens:=[[7,0,0,7],[3,0,0,11],[1,2,8,1],[3,2,0,5],[1,3,4,1]],
    msubs:=[],
    msups:=["8G0-8j","16C0-16a","16A1-16b"],
    class:="32a", rank:=0>;
gl2tab["16E1-16l"]:=rec<g1gl2rec|
    label:="16E1-16l", genus:=1, sl2label:="16E1", gl2level:=16, sl2level:=16, index:=48, gl2id:=25982,
    gens:=[[7,0,0,7],[3,0,0,11],[1,2,8,1],[3,3,0,5],[1,0,4,3]],
    msubs:=["16M1-16f","16M1-16l"],
    msups:=["8G0-8c","16C0-16d","16A1-16c"],
    class:="64a", rank:=0>;
gl2tab["16F1-16a"]:=rec<g1gl2rec|
    label:="16F1-16a", genus:=1, sl2label:="16F1", gl2level:=16, sl2level:=16, index:=48, gl2id:=27234,
    gens:=[[3,0,0,11],[1,4,4,1],[0,3,5,0],[1,0,0,3],[1,0,0,5]],
    msubs:=[],
    msups:=["8H0-8a","16B0-16a","16B1-16a"],
    class:="256b", rank:=1, curve:="256b1",
    product:=<<"16F1-16a","8H0-8a","16B0-16a","8B0-8a">,<-2/x,-2*y/(x^2-2),2*t/(t^2-2),1/2*t^2>>,
    g0target:="8H0-8a", g0map:="-2/x",
    jlist:=[-9406030320550929341375/16263137215612256256]>;
gl2tab["16F1-16b"]:=rec<g1gl2rec|
    label:="16F1-16b", genus:=1, sl2label:="16F1", gl2level:=16, sl2level:=16, index:=48, gl2id:=27231,
    gens:=[[3,0,0,11],[1,4,4,1],[0,3,5,0],[1,0,0,3],[1,8,0,5]],
    msubs:=[],
    msups:=["8H0-8a","16B0-16c","16B1-16b"],
    class:="256c", rank:=0>;
gl2tab["16F1-16c"]:=rec<g1gl2rec|
    label:="16F1-16c", genus:=1, sl2label:="16F1", gl2level:=16, sl2level:=16, index:=48, gl2id:=27222,
    gens:=[[3,0,0,11],[1,4,4,1],[0,3,5,0],[1,0,0,5],[1,2,2,3]],
    msubs:=[],
    msups:=["8H0-8d","16B0-16c","16B1-16c"],
    class:="256b", rank:=1, curve:="256b2",
    product:=<<"16F1-16c","16B0-16c","4F0-4b","4C0-4a">,<(x^2+2*y-8)/(x^2-8*x+8),(x^5+4*x^4+8*x^3*y-48*x^3-64*x^2*y-64*x^2+192*x*y+64*x+16*y^2-256*y+256)/(x^5-20*x^4+144*x^3-448*x^2+576*x-256),16*t^4,8*t^2+8>>,
    g0target:="16B0-16c", g0map:="(x^2+2*y-8)/(x^2-8*x+8)",
    jlist:=[-138956996704798896043327488000/665416609183179841]>;
gl2tab["16F1-16d"]:=rec<g1gl2rec|
    label:="16F1-16d", genus:=1, sl2label:="16F1", gl2level:=16, sl2level:=16, index:=48, gl2id:=27148,
    gens:=[[3,0,0,11],[1,4,4,1],[0,3,5,0],[1,4,0,3],[1,0,0,5]],
    msubs:=[],
    msups:=["8H0-8e","16B0-16c","16B1-16c"],
    class:="256b", rank:=1, curve:="256b2",
    product:=<<"16F1-16d","8H0-8e","16B0-16c","8B0-8a">,<4/x,-2*y/(x^2+8),2*t/(t^2+2),t^2>>,
    g0target:="8H0-8e", g0map:="4/x",
    jlist:=[250642822625/1679616]>;
gl2tab["16F1-16e"]:=rec<g1gl2rec|
    label:="16F1-16e", genus:=1, sl2label:="16F1", gl2level:=16, sl2level:=16, index:=48, gl2id:=27156,
    gens:=[[3,0,0,11],[1,4,4,1],[0,3,5,0],[1,4,0,3],[1,2,2,3]],
    msubs:=[],
    msups:=["8H0-8f","16B0-16c","16B1-16d"],
    class:="256c", rank:=0>;
gl2tab["16F1-16f"]:=rec<g1gl2rec|
    label:="16F1-16f", genus:=1, sl2label:="16F1", gl2level:=16, sl2level:=16, index:=48, gl2id:=27142,
    gens:=[[3,0,0,11],[1,4,4,1],[0,3,5,0],[1,4,0,3],[3,4,0,5]],
    msubs:=[],
    msups:=["8H0-8e","16B0-16a","16B1-16d"],
    class:="256c", rank:=0>;
gl2tab["16F1-16g"]:=rec<g1gl2rec|
    label:="16F1-16g", genus:=1, sl2label:="16F1", gl2level:=16, sl2level:=16, index:=48, gl2id:=27224,
    gens:=[[3,0,0,11],[1,4,4,1],[0,3,5,0],[1,8,0,5],[3,2,2,1]],
    msubs:=[],
    msups:=["8H0-8d","16B0-16a","16B1-16d"],
    class:="256c", rank:=0>;
gl2tab["16F1-16h"]:=rec<g1gl2rec|
    label:="16F1-16h", genus:=1, sl2label:="16F1", gl2level:=16, sl2level:=16, index:=48, gl2id:=27161,
    gens:=[[3,0,0,11],[1,4,4,1],[0,3,5,0],[3,0,0,5],[1,2,2,1]],
    msubs:=[],
    msups:=["8H0-8i","16B0-16c","16B1-16a"],
    class:="256b", rank:=1, curve:="256b1",
    product:=<<"16F1-16h","8H0-8i","16B0-16c","8B0-8a">,<x,-1/2*y/x,(1/4*t^2-1/2)/t,t^2>>,
    g0target:="8H0-8i", g0map:="x",
    jlist:=[76342061396020470941117375/55818561911590953216]>;
gl2tab["16F1-16i"]:=rec<g1gl2rec|
    label:="16F1-16i", genus:=1, sl2label:="16F1", gl2level:=16, sl2level:=16, index:=48, gl2id:=27162,
    gens:=[[3,0,0,11],[1,4,4,1],[0,3,5,0],[3,0,0,5],[2,3,5,6]],
    msubs:=[],
    msups:=["8H0-8i","16B0-16a","16B1-16b"],
    class:="256c", rank:=0>;
gl2tab["16F1-16j"]:=rec<g1gl2rec|
    label:="16F1-16j", genus:=1, sl2label:="16F1", gl2level:=16, sl2level:=16, index:=48, gl2id:=27152,
    gens:=[[3,0,0,11],[1,4,4,1],[0,3,5,0],[3,4,0,1],[1,2,2,1]],
    msubs:=[],
    msups:=["8H0-8f","16B0-16a","16B1-16c"],
    class:="256b", rank:=1, curve:="256b2",
    product:=<<"16F1-16j","8H0-8f","16B0-16a","8B0-8a">,<1/2*x,1/2*y/x,(1/4*t^2+1/2)/t,1/2*t^2>>,
    g0target:="8H0-8f", g0map:="x/2",
    jlist:=[-14977894625/688747536]>;
gl2tab["16F1-16k"]:=rec<g1gl2rec|
    label:="16F1-16k", genus:=1, sl2label:="16F1", gl2level:=16, sl2level:=16, index:=48, gl2id:=27248,
    gens:=[[3,0,0,11],[1,4,4,1],[0,3,5,0],[3,4,0,5],[1,2,2,1]],
    msubs:=[],
    msups:=["8H0-8k","16B0-16a","16B1-16c"],
    class:="256b", rank:=1, curve:="256b2",
    product:=<<"16F1-16k","16B0-16a","4F0-8b","4C0-4a">,<(x^2+2*y-8)/(x^2+4*x+8),(x^5-2*x^4-4*x^3*y-40*x^2*y+32*x^2-96*x*y+64*x-8*y^2-64*y-128)/(x^5+10*x^4+48*x^3+128*x^2+192*x+128),4*t^4,4*t^2-8>>,
    g0target:="16B0-16a", g0map:="(x^2+2*y-8)/(x^2+4*x+8)",
    jlist:=[35572991279078106631982840886000/815730721]>;
gl2tab["16F1-16l"]:=rec<g1gl2rec|
    label:="16F1-16l", genus:=1, sl2label:="16F1", gl2level:=16, sl2level:=16, index:=48, gl2id:=27247,
    gens:=[[3,0,0,11],[1,4,4,1],[0,3,5,0],[5,4,0,3],[3,2,2,5]],
    msubs:=[],
    msups:=["8H0-8k","16B0-16c","16B1-16d"],
    class:="256c", rank:=0>;
gl2tab["16G1-16a"]:=rec<g1gl2rec|
    label:="16G1-16a", genus:=1, sl2label:="16G1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26071,
    gens:=[[7,0,0,7],[9,0,0,9],[0,9,7,6],[1,4,0,5],[1,2,0,7]],
    msubs:=["16M1-16l","16M1-16n","16M1-16q","16M1-16s"],
    msups:=["8I0-8a","16D0-16a","16A1-16c"],
    class:="64a", rank:=0>;
gl2tab["16G1-16b"]:=rec<g1gl2rec|
    label:="16G1-16b", genus:=1, sl2label:="16G1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26072,
    gens:=[[7,0,0,7],[9,0,0,9],[0,9,7,6],[1,4,0,5],[1,6,0,3]],
    msubs:=["16M1-16j","16M1-16s"],
    msups:=["8I0-8a","16D0-16b","16A1-16c"],
    class:="64a", rank:=0>;
gl2tab["16G1-16c"]:=rec<g1gl2rec|
    label:="16G1-16c", genus:=1, sl2label:="16G1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26325,
    gens:=[[7,0,0,7],[9,0,0,9],[0,9,7,6],[1,4,0,5],[5,2,0,3]],
    msubs:=["16M1-16f","16M1-16q"],
    msups:=["8I0-8b","16D0-16a","16A1-16c"],
    class:="64a", rank:=0>;
gl2tab["16G1-16d"]:=rec<g1gl2rec|
    label:="16G1-16d", genus:=1, sl2label:="16G1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26075,
    gens:=[[7,0,0,7],[9,0,0,9],[0,9,7,6],[1,6,0,3],[1,2,0,7]],
    msubs:=["16M1-16d","16M1-16e","16M1-16g","16M1-16i"],
    msups:=["8I0-8a","16D0-16c","16A1-16d"],
    class:="32a", rank:=0>;
gl2tab["16G1-16e"]:=rec<g1gl2rec|
    label:="16G1-16e", genus:=1, sl2label:="16G1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26145,
    gens:=[[7,0,0,7],[9,0,0,9],[0,9,7,6],[3,2,0,1],[1,2,0,7]],
    msubs:=["16M1-16b","16M1-16c","16M1-16f","16M1-16j"],
    msups:=["8I0-8c","16D0-16c","16A1-16c"],
    class:="64a", rank:=0>;
gl2tab["16G1-16f"]:=rec<g1gl2rec|
    label:="16G1-16f", genus:=1, sl2label:="16G1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26146,
    gens:=[[7,0,0,7],[9,0,0,9],[0,9,7,6],[3,2,0,1],[5,2,0,3]],
    msubs:=["16M1-16d","16M1-16k"],
    msups:=["8I0-8b","16D0-16c","16A1-16d"],
    class:="32a", rank:=0>;
gl2tab["16G1-16g"]:=rec<g1gl2rec|
    label:="16G1-16g", genus:=1, sl2label:="16G1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26143,
    gens:=[[7,0,0,7],[9,0,0,9],[0,9,7,6],[3,2,0,1],[5,4,0,1]],
    msubs:=["16M1-16e","16M1-16t"],
    msups:=["8I0-8c","16D0-16b","16A1-16d"],
    class:="32a", rank:=0>;
gl2tab["16G1-16h"]:=rec<g1gl2rec|
    label:="16G1-16h", genus:=1, sl2label:="16G1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26323,
    gens:=[[7,0,0,7],[9,0,0,9],[0,9,7,6],[3,4,0,7],[5,6,0,7]],
    msubs:=["16M1-16b","16M1-16n"],
    msups:=["8I0-8c","16D0-16d","16A1-16c"],
    class:="64a", rank:=0>;
gl2tab["16G1-16i"]:=rec<g1gl2rec|
    label:="16G1-16i", genus:=1, sl2label:="16G1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26074,
    gens:=[[7,0,0,7],[9,0,0,9],[0,9,7,6],[5,2,0,3],[1,6,0,3]],
    msubs:=["16M1-16c","16M1-16l"],
    msups:=["8I0-8d","16D0-16c","16A1-16c"],
    class:="64a", rank:=0>;
gl2tab["16G1-16j"]:=rec<g1gl2rec|
    label:="16G1-16j", genus:=1, sl2label:="16G1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26069,
    gens:=[[7,0,0,7],[9,0,0,9],[0,9,7,6],[5,2,0,3],[5,4,0,1]],
    msubs:=["16M1-16g","16M1-16r"],
    msups:=["8I0-8d","16D0-16a","16A1-16d"],
    class:="32a", rank:=0>;
gl2tab["16G1-16k"]:=rec<g1gl2rec|
    label:="16G1-16k", genus:=1, sl2label:="16G1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26326,
    gens:=[[7,0,0,7],[9,0,0,9],[0,9,7,6],[5,4,0,1],[1,2,0,7]],
    msubs:=["16M1-16k","16M1-16p","16M1-16r","16M1-16t"],
    msups:=["8I0-8c","16D0-16a","16A1-16d"],
    class:="32a", rank:=0>;
gl2tab["16G1-16l"]:=rec<g1gl2rec|
    label:="16G1-16l", genus:=1, sl2label:="16G1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26070,
    gens:=[[7,0,0,7],[9,0,0,9],[0,9,7,6],[7,2,0,5],[7,4,0,3]],
    msubs:=["16M1-16i","16M1-16p"],
    msups:=["8I0-8a","16D0-16d","16A1-16d"],
    class:="32a", rank:=0>;
gl2tab["16H1-16a"]:=rec<g1gl2rec|
    label:="16H1-16a", genus:=1, sl2label:="16H1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26569,
    gens:=[[3,8,0,11],[1,4,4,1],[4,3,5,4],[1,8,0,7],[1,2,2,1]],
    msubs:=[],
    msups:=["8H0-8i"],
    class:="32a", rank:=0>;
gl2tab["16H1-16b"]:=rec<g1gl2rec|
    label:="16H1-16b", genus:=1, sl2label:="16H1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26570,
    gens:=[[3,8,0,11],[1,4,4,1],[4,3,5,4],[1,8,0,7],[1,2,2,9]],
    msubs:=[],
    msups:=["8H0-8i"],
    class:="64a", rank:=0>;
gl2tab["16H1-16c"]:=rec<g1gl2rec|
    label:="16H1-16c", genus:=1, sl2label:="16H1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26680,
    gens:=[[3,8,0,11],[1,4,4,1],[4,3,5,4],[5,4,0,3],[1,2,2,1]],
    msubs:=[],
    msups:=["8H0-8k"],
    class:="32a", rank:=0>;
gl2tab["16H1-16d"]:=rec<g1gl2rec|
    label:="16H1-16d", genus:=1, sl2label:="16H1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26679,
    gens:=[[3,8,0,11],[1,4,4,1],[4,3,5,4],[5,4,0,3],[5,2,2,3]],
    msubs:=[],
    msups:=["8H0-8k"],
    class:="64a", rank:=0>;
gl2tab["16I1-16a"]:=rec<g1gl2rec|
    label:="16I1-16a", genus:=1, sl2label:="16I1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26846,
    gens:=[[3,0,0,11],[0,3,5,8],[1,4,12,1],[1,0,0,3],[1,0,0,5]],
    msubs:=[],
    msups:=["8H0-8a","16E0-16a","16C1-16a"],
    class:="256d", rank:=0>;
gl2tab["16I1-16b"]:=rec<g1gl2rec|
    label:="16I1-16b", genus:=1, sl2label:="16I1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26854,
    gens:=[[3,0,0,11],[0,3,5,8],[1,4,12,1],[1,0,0,3],[1,2,10,3]],
    msubs:=[],
    msups:=["8H0-8b","16E0-16b","16C1-16a"],
    class:="256d", rank:=0>;
gl2tab["16I1-16c"]:=rec<g1gl2rec|
    label:="16I1-16c", genus:=1, sl2label:="16I1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26850,
    gens:=[[3,0,0,11],[0,3,5,8],[1,4,12,1],[1,0,0,3],[1,8,0,5]],
    msubs:=[],
    msups:=["8H0-8a","16E0-16b","16C1-16b"],
    class:="256d", rank:=0>;
gl2tab["16I1-16d"]:=rec<g1gl2rec|
    label:="16I1-16d", genus:=1, sl2label:="16I1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26845,
    gens:=[[3,0,0,11],[0,3,5,8],[1,4,12,1],[1,0,0,5],[1,8,0,3]],
    msubs:=[],
    msups:=["8H0-8a","16E0-16c","16C1-16c"],
    class:="256a", rank:=1, curve:="256a1",
    product:=<<"16I1-16d","8H0-8a","16E0-16c","8D0-8a">,<x-1,y/(x-1),(1/2*t^2+1)/t,1/2*t^2-2>>,
    g0target:="8H0-8a", g0map:="x-1",
    jlist:=[777228872334890625/60523872256]>;
gl2tab["16I1-16e"]:=rec<g1gl2rec|
    label:="16I1-16e", genus:=1, sl2label:="16I1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26841,
    gens:=[[3,0,0,11],[0,3,5,8],[1,4,12,1],[1,0,0,5],[3,2,2,5]],
    msubs:=[],
    msups:=["8H0-8d","16E0-16c","16C1-16a"],
    class:="256d", rank:=0>;
gl2tab["16I1-16f"]:=rec<g1gl2rec|
    label:="16I1-16f", genus:=1, sl2label:="16I1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26858,
    gens:=[[3,0,0,11],[0,3,5,8],[1,4,12,1],[1,8,0,3],[2,3,5,2]],
    msubs:=[],
    msups:=["8H0-8b","16E0-16c","16C1-16d"],
    class:="256a", rank:=1, curve:="256a2",
    product:=<<"16I1-16f","8H0-8b","16E0-16c","8D0-8a">,<(4*x-4*y+12)/(x^2-2*x-15),(2*x^3-2*x^2*y-14*x^2+8*x*y-26*x+26*y+102)/(x^3+x^2*y-7*x^2-2*x*y+3*x-23*y+99),4*t/(t^2+2),1/2*t^2-2>>,
    g0target:="8H0-8b", g0map:="(4*x-4*y+12)/(x^2-2*x-15)",
    jlist:=[-127127411942528176659703116687413564811579598486886839355712/9936686810379470262763464742689311761767310543607481990721]>;
gl2tab["16I1-16g"]:=rec<g1gl2rec|
    label:="16I1-16g", genus:=1, sl2label:="16I1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26838,
    gens:=[[3,0,0,11],[0,3,5,8],[1,4,12,1],[1,8,0,5],[1,2,10,3]],
    msubs:=[],
    msups:=["8H0-8d","16E0-16b","16C1-16d"],
    class:="256a", rank:=1, curve:="256a2",
    product:=<<"16I1-16g","8H0-8d","16E0-16b","8D0-8a">,<(-2*x+2*y-2)/(x^2-2*x-11),(x^3-x^2*y-5*x^2-x+13*y+53)/(x^3+x^2*y-5*x^2-2*x*y-9*x-7*y+29),(t^2-2*t-1)/(t^2+1),t^2-2>>,
    g0target:="8H0-8d", g0map:="2*(y-x-1)/(x^2-2*x-11)",
    jlist:=[-7414747814569181184/12744293212890625]>;
gl2tab["16I1-16h"]:=rec<g1gl2rec|
    label:="16I1-16h", genus:=1, sl2label:="16I1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26862,
    gens:=[[3,0,0,11],[0,3,5,8],[1,4,12,1],[1,8,0,7],[1,2,10,7]],
    msubs:=[],
    msups:=["8H0-8j","16E0-16b","16C1-16c"],
    class:="256a", rank:=1, curve:="256a1",
    product:=<<"16I1-16h","8H0-8j","16E0-16b","8D0-8a">,<1/x,-2*y/(x^2+2*x-1),(2*t^2+2)/(t^2-2*t-1),t^2-2>>,
    g0target:="8H0-8j", g0map:="1/x",
    jlist:=[-568253632816722676032/30691309272568485121]>;
gl2tab["16I1-16i"]:=rec<g1gl2rec|
    label:="16I1-16i", genus:=1, sl2label:="16I1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26865,
    gens:=[[3,0,0,11],[0,3,5,8],[1,4,12,1],[1,8,0,7],[2,3,5,2]],
    msubs:=[],
    msups:=["8H0-8j","16E0-16c","16C1-16b"],
    class:="256d", rank:=0>;
gl2tab["16I1-16j"]:=rec<g1gl2rec|
    label:="16I1-16j", genus:=1, sl2label:="16I1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26852,
    gens:=[[3,0,0,11],[0,3,5,8],[1,4,12,1],[3,0,0,5],[1,8,0,3]],
    msubs:=[],
    msups:=["8H0-8a","16E0-16d","16C1-16d"],
    class:="256a", rank:=1, curve:="256a2",
    product:=<<"16I1-16j","8H0-8a","16E0-16d","8D0-8a">,<1/2*x+3/2,1/2*y/(x+3),(1/2*t^2+1)/t,t^2+2>>,
    g0target:="8H0-8a", g0map:="(x+3)/2",
    jlist:=[9869198625/614656]>;
gl2tab["16I1-16k"]:=rec<g1gl2rec|
    label:="16I1-16k", genus:=1, sl2label:="16I1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26861,
    gens:=[[3,0,0,11],[0,3,5,8],[1,4,12,1],[3,0,0,5],[2,3,5,2]],
    msubs:=[],
    msups:=["8H0-8j","16E0-16a","16C1-16d"],
    class:="256a", rank:=1, curve:="256a2",
    product:=<<"16I1-16k","8H0-8j","16E0-16a","8D0-8a">,<(-x+1)/(x+3),4*y/(x^2-2*x-7),(2*t^2+2)/(t^2-2*t-1),1/2*t^2+2>>,
    g0target:="8H0-8j", g0map:="(-x+1)/(x+3)",
    jlist:=[56676204750528/2401]>;
gl2tab["16I1-16l"]:=rec<g1gl2rec|
    label:="16I1-16l", genus:=1, sl2label:="16I1", gl2level:=16, sl2level:=16, index:=48, gl2id:=26866,
    gens:=[[3,0,0,11],[0,3,5,8],[1,4,12,1],[3,0,0,5],[3,2,2,5]],
    msubs:=[],
    msups:=["8H0-8j","16E0-16d","16C1-16a"],
    class:="256d", rank:=0>;
gl2tab["16J1-16a"]:=rec<g1gl2rec|
    label:="16J1-16a", genus:=1, sl2label:="16J1", gl2level:=16, sl2level:=16, index:=48, gl2id:=27024,
    gens:=[[7,0,0,7],[0,3,5,0],[5,2,2,1],[1,2,0,3],[1,4,0,5]],
    msubs:=[],
    msups:=["8L0-8a","16B0-16d","16D1-16a"],
    class:="128d", rank:=0>;
gl2tab["16J1-16b"]:=rec<g1gl2rec|
    label:="16J1-16b", genus:=1, sl2label:="16J1", gl2level:=16, sl2level:=16, index:=48, gl2id:=27025,
    gens:=[[7,0,0,7],[0,3,5,0],[5,2,2,1],[1,2,0,3],[7,2,0,1]],
    msubs:=[],
    msups:=["8L0-8a","16B0-16b","16D1-16b"],
    class:="128c", rank:=0>;
gl2tab["16J1-16c"]:=rec<g1gl2rec|
    label:="16J1-16c", genus:=1, sl2label:="16J1", gl2level:=16, sl2level:=16, index:=48, gl2id:=27036,
    gens:=[[7,0,0,7],[0,3,5,0],[5,2,2,1],[1,4,0,5],[7,2,0,1]],
    msubs:=[],
    msups:=["8L0-8a","16B0-16d","16D1-16c"],
    class:="128b", rank:=0>;
gl2tab["16J1-16d"]:=rec<g1gl2rec|
    label:="16J1-16d", genus:=1, sl2label:="16J1", gl2level:=16, sl2level:=16, index:=48, gl2id:=27125,
    gens:=[[7,0,0,7],[0,3,5,0],[5,2,2,1],[1,6,0,7],[3,4,0,7]],
    msubs:=[],
    msups:=["8L0-8b","16B0-16b","16D1-16a"],
    class:="128d", rank:=0>;
gl2tab["16J1-16e"]:=rec<g1gl2rec|
    label:="16J1-16e", genus:=1, sl2label:="16J1", gl2level:=16, sl2level:=16, index:=48, gl2id:=27037,
    gens:=[[7,0,0,7],[0,3,5,0],[5,2,2,1],[1,6,0,7],[7,4,0,3]],
    msubs:=[],
    msups:=["8L0-8a","16B0-16b","16D1-16d"],
    class:="128a", rank:=1, curve:="128a2",
    g0target:="8B0-8d", g0map:="(x^2+2*x-7)/(8*x-8)",
    jlist:=[3235823235353865606928/218041257467152161]>;
gl2tab["16J1-16f"]:=rec<g1gl2rec|
    label:="16J1-16f", genus:=1, sl2label:="16J1", gl2level:=16, sl2level:=16, index:=48, gl2id:=27137,
    gens:=[[7,0,0,7],[0,3,5,0],[5,2,2,1],[3,6,0,1],[3,4,0,7]],
    msubs:=[],
    msups:=["8L0-8b","16B0-16b","16D1-16c"],
    class:="128b", rank:=0>;
gl2tab["16J1-16g"]:=rec<g1gl2rec|
    label:="16J1-16g", genus:=1, sl2label:="16J1", gl2level:=16, sl2level:=16, index:=48, gl2id:=27138,
    gens:=[[7,0,0,7],[0,3,5,0],[5,2,2,1],[5,4,0,1],[3,6,0,1]],
    msubs:=[],
    msups:=["8L0-8b","16B0-16d","16D1-16d"],
    class:="128a", rank:=1, curve:="128a2",
    g0target:="8L0-8b", g0map:="(1-x)/2",
    jlist:=[49212441575100981741568/248155780267521]>;
gl2tab["16J1-16h"]:=rec<g1gl2rec|
    label:="16J1-16h", genus:=1, sl2label:="16J1", gl2level:=16, sl2level:=16, index:=48, gl2id:=27126,
    gens:=[[7,0,0,7],[0,3,5,0],[5,2,2,1],[5,4,0,1],[5,2,0,7]],
    msubs:=[],
    msups:=["8L0-8b","16B0-16d","16D1-16b"],
    class:="128c", rank:=0>;
gl2tab["16M1-16a"]:=rec<g1gl2rec|
    label:="16M1-16a", genus:=1, sl2label:="16M1", gl2level:=16, sl2level:=16, index:=96, gl2id:=22889,
    gens:=[[1,4,0,1],[7,0,0,7],[3,2,8,11],[1,0,0,3],[1,0,0,5]],
    msubs:=[],
    msups:=["8O0-8c","16G0-16b","16E1-16a"],
    class:="64a", rank:=0>;
gl2tab["16M1-16b"]:=rec<g1gl2rec|
    label:="16M1-16b", genus:=1, sl2label:="16M1", gl2level:=16, sl2level:=16, index:=96, gl2id:=22766,
    gens:=[[1,4,0,1],[7,0,0,7],[3,2,8,11],[1,0,0,5],[5,2,4,3]],
    msubs:=[],
    msups:=["8O0-8b","16G0-16c","16H0-16e","16H0-16h","16E1-16c","16G1-16e","16G1-16h"],
    class:="64a", rank:=0>;
gl2tab["16M1-16c"]:=rec<g1gl2rec|
    label:="16M1-16c", genus:=1, sl2label:="16M1", gl2level:=16, sl2level:=16, index:=96, gl2id:=22421,
    gens:=[[1,4,0,1],[7,0,0,7],[3,2,8,11],[1,1,0,3],[1,0,0,5]],
    msubs:=[],
    msups:=["8O0-8f","16G0-16g","16H0-16e","16H0-16i","16E1-16f","16G1-16e","16G1-16i"],
    class:="64a", rank:=0>;
gl2tab["16M1-16d"]:=rec<g1gl2rec|
    label:="16M1-16d", genus:=1, sl2label:="16M1", gl2level:=16, sl2level:=16, index:=96, gl2id:=22419,
    gens:=[[1,4,0,1],[7,0,0,7],[3,2,8,11],[1,1,0,3],[1,2,0,5]],
    msubs:=[],
    msups:=["8O0-8g","16G0-16g","16H0-16d","16H0-16f","16E1-16h","16G1-16d","16G1-16f"],
    class:="32a", rank:=0>;
gl2tab["16M1-16e"]:=rec<g1gl2rec|
    label:="16M1-16e", genus:=1, sl2label:="16M1", gl2level:=16, sl2level:=16, index:=96, gl2id:=22417,
    gens:=[[1,4,0,1],[7,0,0,7],[3,2,8,11],[1,1,0,3],[5,2,4,3]],
    msubs:=[],
    msups:=["8O0-8h","16G0-16e","16H0-16b","16H0-16e","16E1-16d","16G1-16d","16G1-16g"],
    class:="32a", rank:=0>;
gl2tab["16M1-16f"]:=rec<g1gl2rec|
    label:="16M1-16f", genus:=1, sl2label:="16M1", gl2level:=16, sl2level:=16, index:=96, gl2id:=22763,
    gens:=[[1,4,0,1],[7,0,0,7],[3,2,8,11],[1,1,0,7],[1,0,4,3]],
    msubs:=[],
    msups:=["8O0-8k","16G0-16d","16H0-16f","16H0-16k","16E1-16l","16G1-16c","16G1-16e"],
    class:="64a", rank:=0>;
gl2tab["16M1-16g"]:=rec<g1gl2rec|
    label:="16M1-16g", genus:=1, sl2label:="16M1", gl2level:=16, sl2level:=16, index:=96, gl2id:=22292,
    gens:=[[1,4,0,1],[7,0,0,7],[3,2,8,11],[1,1,0,7],[1,2,4,3]],
    msubs:=[],
    msups:=["8O0-8l","16G0-16d","16H0-16a","16H0-16i","16E1-16i","16G1-16d","16G1-16j"],
    class:="32a", rank:=0>;
gl2tab["16M1-16h"]:=rec<g1gl2rec|
    label:="16M1-16h", genus:=1, sl2label:="16M1", gl2level:=16, sl2level:=16, index:=96, gl2id:=22890,
    gens:=[[1,4,0,1],[7,0,0,7],[3,2,8,11],[1,2,0,3],[1,2,0,5]],
    msubs:=[],
    msups:=["8O0-8d","16G0-16b","16E1-16b"],
    class:="32a", rank:=0>;
gl2tab["16M1-16i"]:=rec<g1gl2rec|
    label:="16M1-16i", genus:=1, sl2label:="16M1", gl2level:=16, sl2level:=16, index:=96, gl2id:=22291,
    gens:=[[1,4,0,1],[7,0,0,7],[3,2,8,11],[1,2,0,5],[1,2,4,3]],
    msubs:=[],
    msups:=["8O0-8e","16G0-16c","16H0-16d","16H0-16l","16E1-16e","16G1-16d","16G1-16l"],
    class:="32a", rank:=0>;
gl2tab["16M1-16j"]:=rec<g1gl2rec|
    label:="16M1-16j", genus:=1, sl2label:="16M1", gl2level:=16, sl2level:=16, index:=96, gl2id:=22418,
    gens:=[[1,4,0,1],[7,0,0,7],[3,2,8,11],[1,3,0,3],[5,1,4,5]],
    msubs:=[],
    msups:=["8O0-8h","16G0-16e","16H0-16d","16H0-16g","16E1-16g","16G1-16b","16G1-16e"],
    class:="64a", rank:=0>;
gl2tab["16M1-16k"]:=rec<g1gl2rec|
    label:="16M1-16k", genus:=1, sl2label:="16M1", gl2level:=16, sl2level:=16, index:=96, gl2id:=22767,
    gens:=[[1,4,0,1],[7,0,0,7],[3,2,8,11],[1,3,0,7],[1,0,4,3]],
    msubs:=[],
    msups:=["8O0-8k","16G0-16d","16H0-16c","16H0-16e","16E1-16i","16G1-16f","16G1-16k"],
    class:="32a", rank:=0>;
gl2tab["16M1-16l"]:=rec<g1gl2rec|
    label:="16M1-16l", genus:=1, sl2label:="16M1", gl2level:=16, sl2level:=16, index:=96, gl2id:=22290,
    gens:=[[1,4,0,1],[7,0,0,7],[3,2,8,11],[1,3,0,7],[1,1,4,1]],
    msubs:=[],
    msups:=["8O0-8l","16G0-16d","16H0-16d","16H0-16j","16E1-16l","16G1-16a","16G1-16i"],
    class:="64a", rank:=0>;
gl2tab["16M1-16m"]:=rec<g1gl2rec|
    label:="16M1-16m", genus:=1, sl2label:="16M1", gl2level:=16, sl2level:=16, index:=96, gl2id:=22891,
    gens:=[[1,4,0,1],[7,0,0,7],[3,2,8,11],[3,0,0,1],[5,0,0,1]],
    msubs:=[],
    msups:=["8O0-8d","16G0-16c","16E1-16a"],
    class:="64a", rank:=0>;
gl2tab["16M1-16n"]:=rec<g1gl2rec|
    label:="16M1-16n", genus:=1, sl2label:="16M1", gl2level:=16, sl2level:=16, index:=96, gl2id:=22803,
    gens:=[[1,4,0,1],[7,0,0,7],[3,2,8,11],[3,1,0,1],[1,1,4,1]],
    msubs:=[],
    msups:=["8O0-8h","16G0-16f","16H0-16k","16H0-16l","16E1-16g","16G1-16a","16G1-16h"],
    class:="64a", rank:=0>;
gl2tab["16M1-16o"]:=rec<g1gl2rec|
    label:="16M1-16o", genus:=1, sl2label:="16M1", gl2level:=16, sl2level:=16, index:=96, gl2id:=22892,
    gens:=[[1,4,0,1],[7,0,0,7],[3,2,8,11],[3,2,0,1],[5,2,0,1]],
    msubs:=[],
    msups:=["8O0-8c","16G0-16c","16E1-16b"],
    class:="32a", rank:=0>;
gl2tab["16M1-16p"]:=rec<g1gl2rec|
    label:="16M1-16p", genus:=1, sl2label:="16M1", gl2level:=16, sl2level:=16, index:=96, gl2id:=22806,
    gens:=[[1,4,0,1],[7,0,0,7],[3,2,8,11],[3,3,0,1],[1,3,4,1]],
    msubs:=[],
    msups:=["8O0-8h","16G0-16f","16H0-16a","16H0-16h","16E1-16d","16G1-16k","16G1-16l"],
    class:="32a", rank:=0>;
gl2tab["16M1-16q"]:=rec<g1gl2rec|
    label:="16M1-16q", genus:=1, sl2label:="16M1", gl2level:=16, sl2level:=16, index:=96, gl2id:=22808,
    gens:=[[1,4,0,1],[7,0,0,7],[3,2,8,11],[3,3,0,1],[5,0,0,1]],
    msubs:=[],
    msups:=["8O0-8g","16G0-16g","16H0-16a","16H0-16c","16E1-16f","16G1-16a","16G1-16c"],
    class:="64a", rank:=0>;
gl2tab["16M1-16r"]:=rec<g1gl2rec|
    label:="16M1-16r", genus:=1, sl2label:="16M1", gl2level:=16, sl2level:=16, index:=96, gl2id:=22804,
    gens:=[[1,4,0,1],[7,0,0,7],[3,2,8,11],[3,3,0,1],[5,2,0,1]],
    msubs:=[],
    msups:=["8O0-8f","16G0-16g","16H0-16j","16H0-16k","16E1-16h","16G1-16j","16G1-16k"],
    class:="32a", rank:=0>;
gl2tab["16M1-16s"]:=rec<g1gl2rec|
    label:="16M1-16s", genus:=1, sl2label:="16M1", gl2level:=16, sl2level:=16, index:=96, gl2id:=22289,
    gens:=[[1,4,0,1],[7,0,0,7],[3,2,8,11],[5,0,0,1],[1,2,4,3]],
    msubs:=[],
    msups:=["8O0-8e","16G0-16b","16H0-16a","16H0-16b","16E1-16c","16G1-16a","16G1-16b"],
    class:="64a", rank:=0>;
gl2tab["16M1-16t"]:=rec<g1gl2rec|
    label:="16M1-16t", genus:=1, sl2label:="16M1", gl2level:=16, sl2level:=16, index:=96, gl2id:=22764,
    gens:=[[1,4,0,1],[7,0,0,7],[3,2,8,11],[5,2,0,1],[3,2,4,5]],
    msubs:=[],
    msups:=["8O0-8b","16G0-16b","16H0-16g","16H0-16k","16E1-16e","16G1-16g","16G1-16k"],
    class:="32a", rank:=0>;
gl2tab["32A1-32a"]:=rec<g1gl2rec|
    label:="32A1-32a", genus:=1, sl2label:="32A1", gl2level:=32, sl2level:=32, index:=48, gl2id:=189559,
    gens:=[[11,8,0,3],[13,8,0,5],[2,11,5,12],[1,2,0,7],[3,2,0,9]],
    msubs:=["32E1-32b","32E1-32i"],
    msups:=["16C0-16d"],
    class:="32a", rank:=0>;
gl2tab["32A1-32b"]:=rec<g1gl2rec|
    label:="32A1-32b", genus:=1, sl2label:="32A1", gl2level:=32, sl2level:=32, index:=48, gl2id:=189621,
    gens:=[[11,8,0,3],[13,8,0,5],[2,11,5,12],[3,2,0,1],[1,10,0,7]],
    msubs:=["32E1-32d","32E1-32e","32E1-32f","32E1-32j"],
    msups:=["16C0-16d"],
    class:="32a", rank:=0>;
gl2tab["32A1-32c"]:=rec<g1gl2rec|
    label:="32A1-32c", genus:=1, sl2label:="32A1", gl2level:=32, sl2level:=32, index:=48, gl2id:=189620,
    gens:=[[11,8,0,3],[13,8,0,5],[2,11,5,12],[3,2,0,1],[5,2,0,3]],
    msubs:=["32E1-32a","32E1-32c","32E1-32g","32E1-32h"],
    msups:=["16C0-16d"],
    class:="64a", rank:=0>;
gl2tab["32A1-32d"]:=rec<g1gl2rec|
    label:="32A1-32d", genus:=1, sl2label:="32A1", gl2level:=32, sl2level:=32, index:=48, gl2id:=189558,
    gens:=[[11,8,0,3],[13,8,0,5],[2,11,5,12],[5,4,0,1],[1,6,0,3]],
    msubs:=["32E1-32k","32E1-32l"],
    msups:=["16C0-16d"],
    class:="64a", rank:=0>;
gl2tab["32E1-32a"]:=rec<g1gl2rec|
    label:="32E1-32a", genus:=1, sl2label:="32E1", gl2level:=32, sl2level:=32, index:=96, gl2id:=184595,
    gens:=[[15,0,0,15],[7,16,0,23],[0,7,9,2],[1,2,0,7],[7,10,0,5]],
    msubs:=[],
    msups:=["16H0-16l","32A0-32d","32A1-32c"],
    class:="64a", rank:=0>;
gl2tab["32E1-32b"]:=rec<g1gl2rec|
    label:="32E1-32b", genus:=1, sl2label:="32E1", gl2level:=32, sl2level:=32, index:=96, gl2id:=184576,
    gens:=[[15,0,0,15],[7,16,0,23],[0,7,9,2],[3,2,0,1],[5,4,0,1]],
    msubs:=[],
    msups:=["16H0-16k","32A0-32b","32A1-32a"],
    class:="32a", rank:=0>;
gl2tab["32E1-32c"]:=rec<g1gl2rec|
    label:="32E1-32c", genus:=1, sl2label:="32E1", gl2level:=32, sl2level:=32, index:=96, gl2id:=184600,
    gens:=[[15,0,0,15],[7,16,0,23],[0,7,9,2],[3,6,0,5],[5,6,0,7]],
    msubs:=[],
    msups:=["16H0-16f","32A0-32d","32A1-32c"],
    class:="64a", rank:=0>;
gl2tab["32E1-32d"]:=rec<g1gl2rec|
    label:="32E1-32d", genus:=1, sl2label:="32E1", gl2level:=32, sl2level:=32, index:=96, gl2id:=184599,
    gens:=[[15,0,0,15],[7,16,0,23],[0,7,9,2],[3,6,0,5],[7,4,0,3]],
    msubs:=[],
    msups:=["16H0-16f","32A0-32b","32A1-32b"],
    class:="32a", rank:=0>;
gl2tab["32E1-32e"]:=rec<g1gl2rec|
    label:="32E1-32e", genus:=1, sl2label:="32E1", gl2level:=32, sl2level:=32, index:=96, gl2id:=184598,
    gens:=[[15,0,0,15],[7,16,0,23],[0,7,9,2],[5,4,0,1],[3,2,0,9]],
    msubs:=[],
    msups:=["16H0-16g","32A0-32d","32A1-32b"],
    class:="32a", rank:=0>;
gl2tab["32E1-32f"]:=rec<g1gl2rec|
    label:="32E1-32f", genus:=1, sl2label:="32E1", gl2level:=32, sl2level:=32, index:=96, gl2id:=184596,
    gens:=[[15,0,0,15],[7,16,0,23],[0,7,9,2],[5,4,0,1],[3,6,0,5]],
    msubs:=[],
    msups:=["16H0-16j","32A0-32d","32A1-32b"],
    class:="32a", rank:=0>;
gl2tab["32E1-32g"]:=rec<g1gl2rec|
    label:="32E1-32g", genus:=1, sl2label:="32E1", gl2level:=32, sl2level:=32, index:=96, gl2id:=184597,
    gens:=[[15,0,0,15],[7,16,0,23],[0,7,9,2],[5,6,0,7],[7,6,0,9]],
    msubs:=[],
    msups:=["16H0-16g","32A0-32b","32A1-32c"],
    class:="64a", rank:=0>;
gl2tab["32E1-32h"]:=rec<g1gl2rec|
    label:="32E1-32h", genus:=1, sl2label:="32E1", gl2level:=32, sl2level:=32, index:=96, gl2id:=184593,
    gens:=[[15,0,0,15],[7,16,0,23],[0,7,9,2],[5,10,0,3],[7,10,0,5]],
    msubs:=[],
    msups:=["16H0-16j","32A0-32b","32A1-32c"],
    class:="64a", rank:=0>;
gl2tab["32E1-32i"]:=rec<g1gl2rec|
    label:="32E1-32i", genus:=1, sl2label:="32E1", gl2level:=32, sl2level:=32, index:=96, gl2id:=184370,
    gens:=[[15,0,0,15],[7,16,0,23],[0,7,9,2],[7,2,0,5],[7,4,0,3]],
    msubs:=[],
    msups:=["16H0-16d","32A0-32d","32A1-32a"],
    class:="32a", rank:=0>;
gl2tab["32E1-32j"]:=rec<g1gl2rec|
    label:="32E1-32j", genus:=1, sl2label:="32E1", gl2level:=32, sl2level:=32, index:=96, gl2id:=184594,
    gens:=[[15,0,0,15],[7,16,0,23],[0,7,9,2],[7,4,0,3],[7,6,0,9]],
    msubs:=[],
    msups:=["16H0-16l","32A0-32b","32A1-32b"],
    class:="32a", rank:=0>;
gl2tab["32E1-32k"]:=rec<g1gl2rec|
    label:="32E1-32k", genus:=1, sl2label:="32E1", gl2level:=32, sl2level:=32, index:=96, gl2id:=184371,
    gens:=[[15,0,0,15],[7,16,0,23],[0,7,9,2],[7,6,0,1],[1,6,0,11]],
    msubs:=[],
    msups:=["16H0-16d","32A0-32b","32A1-32d"],
    class:="64a", rank:=0>;
gl2tab["32E1-32l"]:=rec<g1gl2rec|
    label:="32E1-32l", genus:=1, sl2label:="32E1", gl2level:=32, sl2level:=32, index:=96, gl2id:=184574,
    gens:=[[15,0,0,15],[7,16,0,23],[0,7,9,2],[7,6,0,1],[3,10,0,9]],
    msubs:=[],
    msups:=["16H0-16k","32A0-32d","32A1-32d"],
    class:="64a", rank:=0>;
gl2tab["9A1-9a"]:=rec<g1gl2rec|
    label:="9A1-9a", genus:=1, sl2label:="9A1", gl2level:=9, sl2level:=9, index:=12, gl2id:=300,
    gens:=[[2,0,0,5],[2,3,1,2],[1,0,0,2]],
    msubs:=["9C1-9a","9D1-9a","9D1-9b","9D1-9c"],
    msups:=["3B0-3a"],
    class:="27a", rank:=0, curve:="27a1",
    jlist:=[]>;
gl2tab["9C1-9a"]:=rec<g1gl2rec|
    label:="9C1-9a", genus:=1, sl2label:="9C1", gl2level:=9, sl2level:=9, index:=36, gl2id:=250,
    gens:=[[2,0,0,5],[1,0,3,1],[2,3,2,1]],
    msubs:=["9H1-9a","9H1-9b","9H1-9c"],
    msups:=["3D0-3a","9B0-9a","9C0-9a","9A1-9a"],
    class:="27a", rank:=0, curve:="27a1",
    jlist:=[]>;
gl2tab["9D1-9a"]:=rec<g1gl2rec|
    label:="9D1-9a", genus:=1, sl2label:="9D1", gl2level:=9, sl2level:=9, index:=36, gl2id:=261,
    gens:=[[2,3,1,2],[1,0,0,2]],
    msubs:=["9H1-9a"],
    msups:=["9A1-9a"],
    class:="27a", rank:=0>;
gl2tab["9D1-9b"]:=rec<g1gl2rec|
    label:="9D1-9b", genus:=1, sl2label:="9D1", gl2level:=9, sl2level:=9, index:=36, gl2id:=276,
    gens:=[[2,3,1,2],[2,0,0,1]],
    msubs:=["9H1-9b"],
    msups:=["9A1-9a"],
    class:="27a", rank:=0>;
gl2tab["9D1-9c"]:=rec<g1gl2rec|
    label:="9D1-9c", genus:=1, sl2label:="9D1", gl2level:=9, sl2level:=9, index:=36, gl2id:=269,
    gens:=[[2,3,1,2],[4,0,0,5]],
    msubs:=["9H1-9c"],
    msups:=["9A1-9a"],
    class:="27a", rank:=0>;
gl2tab["9E1-9a"]:=rec<g1gl2rec|
    label:="9E1-9a", genus:=1, sl2label:="9E1", gl2level:=9, sl2level:=9, index:=54, gl2id:=277,
    gens:=[[2,0,0,5],[0,2,4,0],[2,3,3,1]],
    msubs:=[],
    msups:=["9D0-9a","9E0-9a"],
    class:="27a", rank:=0>;
gl2tab["9G1-9a"]:=rec<g1gl2rec|
    label:="9G1-9a", genus:=1, sl2label:="9G1", gl2level:=9, sl2level:=9, index:=81, gl2id:=282,
    gens:=[[4,1,1,5],[0,1,8,0],[4,3,3,5]],
    msubs:=[],
    msups:=["9A0-9a","9F0-9a","9G0-9a"],
    class:="27a", rank:=0>;
gl2tab["9H1-9a"]:=rec<g1gl2rec|
    label:="9H1-9a", genus:=1, sl2label:="9H1", gl2level:=9, sl2level:=9, index:=108, gl2id:=157,
    gens:=[[8,0,3,8],[1,0,1,2]],
    msubs:=[],
    msups:=["9H0-9b","9I0-9a","9J0-9b","9C1-9a","9D1-9a"],
    class:="27a", rank:=0, curve:="27a3",
    jlist:=[]>;
gl2tab["9H1-9b"]:=rec<g1gl2rec|
    label:="9H1-9b", genus:=1, sl2label:="9H1", gl2level:=9, sl2level:=9, index:=108, gl2id:=174,
    gens:=[[8,0,3,8],[2,0,2,1]],
    msubs:=[],
    msups:=["9H0-9b","9I0-9c","9J0-9a","9C1-9a","9D1-9b"],
    class:="27a", rank:=0, curve:="27a3",
    jlist:=[]>;
gl2tab["9H1-9c"]:=rec<g1gl2rec|
    label:="9H1-9c", genus:=1, sl2label:="9H1", gl2level:=9, sl2level:=9, index:=108, gl2id:=172,
    gens:=[[8,0,3,8],[4,0,1,5]],
    msubs:=[],
    msups:=["9H0-9c","9I0-9b","9J0-9c","9C1-9a","9D1-9c"],
    class:="27a", rank:=0, curve:="27a3",
    jlist:=[0]>;
gl2tab["27A1-27a"]:=rec<g1gl2rec|
    label:="27A1-27a", genus:=1, sl2label:="27A1", gl2level:=27, sl2level:=27, index:=36, gl2id:=2913,
    gens:=[[7,9,0,4],[8,9,1,8],[2,3,0,1]],
    msubs:=["27C1-27a","27C1-27b","27C1-27c"],
    msups:=["9B0-9a"],
    class:="27a", rank:=0, curve:="27a1",
    jlist:=[-12288000]>;
gl2tab["27B1-27a"]:=rec<g1gl2rec|
    label:="27B1-27a", genus:=1, sl2label:="27B1", gl2level:=27, sl2level:=27, index:=36, gl2id:=2965,
    gens:=[[4,0,0,7],[5,6,4,5],[1,9,0,2]],
    msubs:=[],
    msups:=["9C0-9a"],
    class:="243b", rank:=0, curve:="243b1",
    jlist:=[]>;
gl2tab["27C1-27a"]:=rec<g1gl2rec|
    label:="27C1-27a", genus:=1, sl2label:="27C1", gl2level:=27, sl2level:=27, index:=108, gl2id:=2730,
    gens:=[[8,0,0,17],[14,9,2,11],[1,3,0,5]],
    msubs:=[],
    msups:=["9I0-9a","27A1-27a"],
    class:="27a", rank:=0, curve:="27a3",
    jlist:=[]>;
gl2tab["27C1-27b"]:=rec<g1gl2rec|
    label:="27C1-27b", genus:=1, sl2label:="27C1", gl2level:=27, sl2level:=27, index:=108, gl2id:=2740,
    gens:=[[8,0,0,17],[14,9,2,11],[2,6,0,1]],
    msubs:=[],
    msups:=["9I0-9c","27A1-27a"],
    class:="27a", rank:=0, curve:="27a3",
    jlist:=[]>;
gl2tab["27C1-27c"]:=rec<g1gl2rec|
    label:="27C1-27c", genus:=1, sl2label:="27C1", gl2level:=27, sl2level:=27, index:=108, gl2id:=2738,
    gens:=[[8,0,0,17],[14,9,2,11],[5,6,0,4]],
    msubs:=[],
    msups:=["9I0-9b","27A1-27a"],
    class:="27a", rank:=0, curve:="27a2",
    jlist:=[]>;
gl2tab["7A1-7a"]:=rec<g1gl2rec|
    label:="7A1-7a", genus:=1, sl2label:="7A1", gl2level:=7, sl2level:=7, index:=42, gl2id:=71,
    gens:=[[1,4,2,2],[4,2,0,3]],
    msubs:=["7C1-7a"],
    msups:=["7D0-7a"],
    class:="49a", rank:=0>;
gl2tab["7B1-7a"]:=rec<g1gl2rec|
    label:="7B1-7a", genus:=1, sl2label:="7B1", gl2level:=7, sl2level:=7, index:=56, gl2id:=53,
    gens:=[[3,0,5,5],[3,0,2,1]],
    msubs:=[],
    msups:=["7B0-7a","7F0-7a"],
    class:="49a", rank:=0, curve:="49a3",
    jlist:=[]>;
gl2tab["7B1-7b"]:=rec<g1gl2rec|
    label:="7B1-7b", genus:=1, sl2label:="7B1", gl2level:=7, sl2level:=7, index:=56, gl2id:=52,
    gens:=[[3,0,5,5],[3,4,0,4]],
    msubs:=[],
    msups:=["7F0-7a"],
    class:="49a", rank:=0, curve:="49a3",
    jlist:=[2268945/128]>;
gl2tab["7C1-7a"]:=rec<g1gl2rec|
    label:="7C1-7a", genus:=1, sl2label:="7C1", gl2level:=7, sl2level:=7, index:=84, gl2id:=55,
    gens:=[[0,3,2,0],[3,0,0,4]],
    msubs:=[],
    msups:=["7F0-7a","7A1-7a"],
    class:="49a", rank:=0>;
gl2tab["49A1-49a"]:=rec<g1gl2rec|
    label:="49A1-49a", genus:=1, sl2label:="49A1", gl2level:=49, sl2level:=49, index:=56, gl2id:=1701,
    gens:=[[10,2,0,5],[1,1,4,5],[8,2,0,3]],
    msubs:=[],
    msups:=["7B0-7a"],
    class:="49a", rank:=0, curve:="49a1",
    jlist:=[]>;
gl2tab["11A1-11a"]:=rec<g1gl2rec|
    label:="11A1-11a", genus:=1, sl2label:="11A1", gl2level:=11, sl2level:=11, index:=12, gl2id:=104,
    gens:=[[3,3,0,4],[3,1,2,1],[1,3,0,2]],
    msubs:=["11D1-11a","11D1-11b","11D1-11c","11D1-11d","11D1-11e"],
    msups:=["1A0-1a"],
    class:="11a", rank:=0, curve:="11a1",
    jlist:=[-121,-32768,-24729001]>;
gl2tab["11B1-11a"]:=rec<g1gl2rec|
    label:="11B1-11a", genus:=1, sl2label:="11B1", gl2level:=11, sl2level:=11, index:=55, gl2id:=108,
    gens:=[[1,2,5,0],[5,6,4,5],[6,1,0,5]],
    msubs:=[],
    msups:=["1A0-1a"],
    class:="121a", rank:=0>;
gl2tab["11C1-11a"]:=rec<g1gl2rec|
    label:="11C1-11a", genus:=1, sl2label:="11C1", gl2level:=11, sl2level:=11, index:=55, gl2id:=107,
    gens:=[[3,4,4,2],[3,1,1,8],[6,4,0,5]],
    msubs:=[],
    msups:=["1A0-1a"],
    class:="121b", rank:=1, curve:="121b1",
    g0target:="1A0-1a", g0map:= "(x^2+3*x-6)^3*(11*(x^2-5)*y+(2*x^4+23*x^3-72*x^2-28*x+127))^3*(6*y+11*x-19)^3*(22*(x-2)*y+(5*x^3+17*x^2-112*x+120))^3 / ((11*y+(2*x^2+17*x-34))^2*((x-4)*y-(5*x-9))^11)",
    jlist:=[-47675785945529664000/929293739471222707]>;
gl2tab["11D1-11a"]:=rec<g1gl2rec|
    label:="11D1-11a", genus:=1, sl2label:="11D1", gl2level:=11, sl2level:=11, index:=60, gl2id:=93,
    gens:=[[5,4,2,4],[1,3,0,2]],
    msubs:=[],
    msups:=["11A1-11a"],
    class:="11a", rank:=0, curve:="11a3",
    jlist:=[]>;
gl2tab["11D1-11b"]:=rec<g1gl2rec|
    label:="11D1-11b", genus:=1, sl2label:="11D1", gl2level:=11, sl2level:=11, index:=60, gl2id:=94,
    gens:=[[5,4,2,4],[2,3,0,3]],
    msubs:=[],
    msups:=["11A1-11a"],
    class:="11a", rank:=0, curve:="11a2",
    jlist:=[-121]>;
gl2tab["11D1-11c"]:=rec<g1gl2rec|
    label:="11D1-11c", genus:=1, sl2label:="11D1", gl2level:=11, sl2level:=11, index:=60, gl2id:=95,
    gens:=[[5,4,2,4],[2,6,0,4]],
    msubs:=[],
    msups:=["11A1-11a"],
    class:="11a", rank:=0, curve:="11a2",
    jlist:=[-24729001]>;
gl2tab["11D1-11d"]:=rec<g1gl2rec|
    label:="11D1-11d", genus:=1, sl2label:="11D1", gl2level:=11, sl2level:=11, index:=60, gl2id:=88,
    gens:=[[5,4,2,4],[5,3,0,6]],
    msubs:=[],
    msups:=["11A1-11a"],
    class:="11a", rank:=0, curve:="11a2",
    jlist:=[-32768]>;
gl2tab["11D1-11e"]:=rec<g1gl2rec|
    label:="11D1-11e", genus:=1, sl2label:="11D1", gl2level:=11, sl2level:=11, index:=60, gl2id:=92,
    gens:=[[5,4,2,4],[6,7,0,1]],
    msubs:=[],
    msups:=["11A1-11a"],
    class:="11a", rank:=0, curve:="11a3",
    jlist:=[]>;
gl2tab["17A1-17a"]:=rec<g1gl2rec|
    label:="17A1-17a", genus:=1, sl2label:="17A1", gl2level:=17, sl2level:=17, index:=18, gl2id:=213,
    gens:=[[3,0,0,6],[1,0,1,1],[1,0,0,3]],
    msubs:=["17B1-17a","17B1-17b"],
    msups:=["1A0-1a"],
    class:="17a", rank:=0, curve:="17a1",
    jlist:=[-297756989/2,-882216989/131072]>;
gl2tab["17B1-17a"]:=rec<g1gl2rec|
    label:="17B1-17a", genus:=1, sl2label:="17B1", gl2level:=17, sl2level:=17, index:=36, gl2id:=210,
    gens:=[[2,0,0,9],[1,0,1,1],[1,0,0,3]],
    msubs:=["17C1-17a","17C1-17b"],
    msups:=["17A1-17a"],
    class:="17a", rank:=0, curve:="17a2",
    jlist:=[-297756989/2]>;
gl2tab["17B1-17b"]:=rec<g1gl2rec|
    label:="17B1-17b", genus:=1, sl2label:="17B1", gl2level:=17, sl2level:=17, index:=36, gl2id:=209,
    gens:=[[2,0,0,9],[1,0,1,1],[3,0,0,1]],
    msubs:=["17C1-17c","17C1-17d"],
    msups:=["17A1-17a"],
    class:="17a", rank:=0, curve:="17a2",
    jlist:=[-882216989/131072]>;
gl2tab["17C1-17a"]:=rec<g1gl2rec|
    label:="17C1-17a", genus:=1, sl2label:="17C1", gl2level:=17, sl2level:=17, index:=72, gl2id:=201,
    gens:=[[4,0,0,13],[1,0,1,1],[1,0,0,3]],
    msubs:=[],
    msups:=["17B1-17a"],
    class:="17a", rank:=0, curve:="17a4",
    jlist:=[]>;
gl2tab["17C1-17b"]:=rec<g1gl2rec|
    label:="17C1-17b", genus:=1, sl2label:="17C1", gl2level:=17, sl2level:=17, index:=72, gl2id:=202,
    gens:=[[4,0,0,13],[1,0,1,1],[2,0,0,3]],
    msubs:=[],
    msups:=["17B1-17a"],
    class:="17a", rank:=0, curve:="17a1",
    jlist:=[-297756989/2]>;
gl2tab["17C1-17c"]:=rec<g1gl2rec|
    label:="17C1-17c", genus:=1, sl2label:="17C1", gl2level:=17, sl2level:=17, index:=72, gl2id:=199,
    gens:=[[4,0,0,13],[1,0,1,1],[3,0,0,1]],
    msubs:=[],
    msups:=["17B1-17b"],
    class:="17a", rank:=0, curve:="17a4",
    jlist:=[]>;
gl2tab["17C1-17d"]:=rec<g1gl2rec|
    label:="17C1-17d", genus:=1, sl2label:="17C1", gl2level:=17, sl2level:=17, index:=72, gl2id:=200,
    gens:=[[4,0,0,13],[1,0,1,1],[3,0,0,2]],
    msubs:=[],
    msups:=["17B1-17b"],
    class:="17a", rank:=0, curve:="17a1",
    jlist:=[-882216989/131072]>;
gl2tab["19A1-19a"]:=rec<g1gl2rec|
    label:="19A1-19a", genus:=1, sl2label:="19A1", gl2level:=19, sl2level:=19, index:=20, gl2id:=264,
    gens:=[[4,7,0,5],[4,1,4,6],[2,2,0,5]],
    msubs:=["19B1-19a","19B1-19b","19B1-19c"],
    msups:=["1A0-1a"],
    class:="19a", rank:=0, curve:="19a1",
    jlist:=[-884736]>;
gl2tab["19B1-19a"]:=rec<g1gl2rec|
    label:="19B1-19a", genus:=1, sl2label:="19B1", gl2level:=19, sl2level:=19, index:=60, gl2id:=258,
    gens:=[[7,9,0,11],[0,8,7,1],[1,7,0,2]],
    msubs:=[],
    msups:=["19A1-19a"],
    class:="19a", rank:=0, curve:="19a3",
    jlist:=[]>;
gl2tab["19B1-19b"]:=rec<g1gl2rec|
    label:="19B1-19b", genus:=1, sl2label:="19B1", gl2level:=19, sl2level:=19, index:=60, gl2id:=252,
    gens:=[[7,9,0,11],[0,8,7,1],[2,2,0,5]],
    msubs:=[],
    msups:=["19A1-19a"],
    class:="19a", rank:=0, curve:="19a2",
    jlist:=[-884736]>;
gl2tab["19B1-19c"]:=rec<g1gl2rec|
    label:="19B1-19c", genus:=1, sl2label:="19B1", gl2level:=19, sl2level:=19, index:=60, gl2id:=259,
    gens:=[[7,9,0,11],[0,8,7,1],[3,5,0,1]],
    msubs:=[],
    msups:=["19A1-19a"],
    class:="19a", rank:=0, curve:="19a3",
    jlist:=[]>;

// update msubs of genus zero groups in gl2tab to include genus one groups above
for k in [k:k in Keys(gl2tab)|gl2Genus(k) eq 1] do for j in [j:j in gl2tab[k]`msups | gl2Genus(j) eq 0] do gl2tab[j]`msubs:=Append(gl2tab[j]`msubs,k); end for; end for;

function g1Map(gl2tab,k)
    r:=gl2tab[k];
    assert r`genus eq 1 and r`rank eq 1;
    R<x,y>:=FunctionField(Rationals(),2);
    return Evaluate(g0Map(gl2tab,r`g0target),eval(r`g0map));
end function;

// returns j-invariant corresponding to n*P on rank 1 genus 1 curve where P is minimal generator of non-torsion part of X_G
function g1Point(gl2tab,k,n)
    assert n ne 0;
    R<x,y>:=FunctionField(Rationals(),2);
    r:=gl2tab[k];
    assert r`genus eq 1 and r`rank eq 1;
    E:=EllipticCurve(r`curve);
    G:=Generators(E);
    P:=[g:g in G|Order(g) eq 0][1];
    Q:=n*P;
    return Evaluate(g0Map(gl2tab,r`g0target),Evaluate(eval(r`g0map),[Q[1],Q[2]]));
end function;

// procedure to print out the listing above
procedure g1PrintTable(gl2tab)
    R<x,y>:=FunctionField(Rationals(),2);
    F<t>:=FunctionField(Rationals());
    for k in Sort([k:k in Keys(gl2tab) | gl2Genus(k) eq 1],gl2LabelCmp) do
        printf "gl2tab[\"%o\"]:=rec<g1gl2rec|\n", k;
        r := gl2tab[k];
        printf "    label:=\"%o\", genus:=1, sl2label:=\"%o\", gl2level:=%o, sl2level:=%o, index:=%o, gl2id:=%o,\n", r`label, r`sl2label, r`gl2level, r`sl2level, r`index, r`gl2id;
        printf "    gens:=%o,\n", &cat Split(&cat Split(Sprintf("%o",r`gens)," "),"\n");
        printf "    msubs:=%o,\n", &cat Split(Sprintf("%o",["\"" cat s cat "\"":s in r`msubs])," ");
        printf "    msups:=%o,\n", &cat Split(Sprintf("%o",["\"" cat s cat "\"":s in r`msups])," ");
        if not assigned r`curve then
            printf "    class:=\"%o\", rank:=%o>;\n", r`class, r`rank;
        else
            printf "    class:=\"%o\", rank:=%o, curve:=\"%o\",\n", r`class, r`rank, r`curve;
            if assigned r`product then
                printf "    product:=\%o,\n", &cat Split(Sprintf("%o",r`product)," ");
            end if;
            if assigned r`g0target then
                printf "    g0target:=\"%o\", g0map:=\"%o\",\n", r`g0target, r`g0map;
            end if;
            if not assigned r`jlist or #r`jlist eq 0 then
                printf "    jlist:=[]>;\n";
            else
                printf "    jlist:=%o>;\n", &cat Split(Sprintf("%o",r`jlist)," ");
            end if;
        end if;
    end for;
end procedure;

// returns a list of maximal index groups in tab that contain conjugates of the two specified groups
// note that there need not be a unique such group because the containment may require conjugating by different elements
// returns the empty string if no common supergroups are found in tab
function gl2MinimalCommonSupergroups(tab,label1,label2)
    if label1 eq label2 then return [label1]; end if;
    S1:=gl2Supergroups(tab,label1);
    S2:=gl2Supergroups(tab,label2);
    if label1 in S2 then return [label1]; end if;
    if label2 in S1 then return [label2]; end if;
    S:=[s: s in Set(S1) meet Set(S2)];
    if #S eq 0 then return []; end if;
    m := Max([tab[k]`index:k in S]);
    return [k: k in S | tab[k]`index eq m];
end function;

// returns alist of minimal index subgroup in tab contained in two specified groups
// note that there need not be a unique such group because the containment may require conjugating by different elements (8L0-8a and 16B0-16b give an example)
// returns the empty string if no common subgroups are found in tab
function gl2MaximalCommonSubgroups(tab,label1,label2)
    if label1 eq label2 then return [label1]; end if;
    S1:=gl2Subgroups(tab,label1);
    S2:=gl2Subgroups(tab,label2);
    if label1 in S2 then return [label1]; end if;
    if label2 in S1 then return [label2]; end if;
    S:=[s: s in Set(S1) meet Set(S2)];
    if #S eq 0 then return []; end if;
    m := Min([tab[k]`index:k in S]);
    return [k: k in S | tab[k]`index eq m];
end function;

// function for comparing points by height, but favor points at infinity
function PointCmp(P1,P2)
    if P1[3] eq 0 then return -1; end if;
    if P2[3] eq 0 then return 1; end if;
    return Max([Height(P1[1]),Height(P1[2]),Height(P1[3])])-Max([Height(P2[1]),Height(P2[2]),Height(P2[3])]);
end function;

// given the label of a genus 0 group, returns true if the map to the j-line is even
function g0MapIsEven(tab,h)
    if h eq "" then return false; end if;
    j:=g0Map(tab,h);
    return Evaluate(j,-t) eq j;
end function;

// given labels h1,h2 of two genus zero groups H1,H2 whose intersection H has genus one, attempt to compute an equation for X_H as an elliptic curve E and a pair of maps j1:E->X_H1, j2:E->X_H2
// if successful, returns the tuple <H,E,j1,j2>, otherwise returns an empty tuple
function g1FiberProduct(tab,h1,h2,base:neg:=false)
    products := gl2MaximalCommonSubgroups(tab,h1,h2);
    if #products eq 0 then printf "no common subgroup of %o and %o found in table\n", h1, h2; assert false; end if;
    if #products gt 1 then printf "multiple common maximal subgroups of %o and %o, proceeding...\n", h1, h2; end if;
    // compute equation for X_H as fiber product over X_G, where G is a minimal common supergroup of H1 and H2
    if base eq "" then assert tab[h1]`index * tab[h2]`index eq tab[products[1]]`index; end if;
    if base ne "" then assert tab[h1]`index * tab[h2]`index eq tab[base]`index * tab[products[1]]`index; end if;
    f1 := g0Map(tab,h1:target:=base);
    f2 := g0Map(tab,h2:target:=base);
    // map from base to X(1) is even, there may be a sign ambiguity in f1 and f2, if we hit a problem, we retry with the sign of one of them flipped
    if neg then f2 := -f2; end if;
    R<x,y>:=FunctionField(Rationals(),2);
    f:=Numerator(Evaluate(f1,x)-Evaluate(f2,y));
    if not IsIrreducible(f) then
        if g0MapIsEven(tab,base) and not neg then return $$(tab,h1,h2,base:neg:=true); end if;
        printf "[%o,%o,%o] %o is not irreducible\n", h1,h2,products,Factorization(f); return <>;
    end if;
    C:=ProjectiveClosure(Curve(AffineSpace(Rationals(),2),f));
    if Genus(C) ne 1 then
        if g0MapIsEven(tab,base) and not neg then return $$(tab,h1,h2,base:neg:=true); end if;
        printf "[%o,%o,%o] %o has genus %o\n", h1,h2,products,f,Genus(C); return <>;
    end if;
    // we need a rational point to make an elliptic curve, preferably one with small height (but we will try several to see which gives us the best model/maps)
    S:=Sort([P:P in RationalPoints(C:Bound:=1000)|not P in SingularPoints(C)],PointCmp);
    if #S eq 0 then
        if g0MapIsEven(tab,base) and not neg then return $$(tab,h1,h2,base:neg:=true); end if;
        printf "[%o,%o,%o] Couldn't find a rational point on %o\n", h1,h2,products, f; return <>;
    end if;
    L:=[];
    for i:=1 to #S do
        if i gt 5 then break; end if;
        E1,phi:=EllipticCurve(C,S[i]);
        if IsInvertible(phi) then
            E2,pi:=MinimalModel(E1);
            polys:=DefiningPolynomials(Inverse(phi*pi));
            g1:=R!Evaluate(polys[1]/polys[3],[x,y,1]);  g2:=R!Evaluate(polys[2]/polys[3],[x,y,1]);
            L:=Append(L,<E2,g1,g2>);
        end if;
    end for;
    L:=Sort(L,function(a,b) return #Sprintf("%o",a)-#Sprintf("%o",b); end function);
    assert #{CremonaReference(r[1]):r in L} eq 1;
    _,c:=Regexp("[0-9]+[a-z]+",CremonaReference(L[1][1]));
    match := [h:h in products|tab[h]`class eq c];
    if #match eq 0 then
        if g0MapIsEven(tab,base) and not neg then return $$(tab,h1,h2,base:neg:=true); end if;
        printf "[%o,%o,%o] Elliptic curve %o does not match isogeny classes %o\n", h1,h2,products,c,[gl2tab[h]`class: h in products];  return <>;
    end if;
    assert #match eq 1;
    return <match[1],CremonaReference(L[1][1]),h1,h2,base,L[1][2],L[1][3]>;
end function;

// Given group labels [h1,h2,h3,h4] of gl2-groups [H1,H2,H3,H4] and maps <f12,f13,f24,f34>, with H1 a genus 1 curve isomorphic to ecurve and H2,H3,H4 genus 0 (possibly H4=X(1))
// Verifies that X_H1 is the fiber product of f24:X_H2->X_H4 and f34:X_H3->X_H4 over the base X_H4 (with f12:X_H1->X_H2, f13:X_H1->X_H3 corresponding maps)
// For simplicity we us affine maps (so maps g1->g1 are pairs of rational functions in Q(x,y), maps g1->g0 are rational functions in Q(x,y), and maps g0->g0 are rational functions in Q(t))
function g1VerifyFiberProduct(gl2tab,ecurve,groups,maps)
    h1:=groups[1]; h2:=groups[2]; h3:=groups[3]; h4:=groups[4];
    f12:=maps[1]; f13:=maps[2]; f24:=maps[3]; f34:=maps[4];
    assert gl2IsProperSubgroup(gl2tab,h1,h2);
    assert gl2IsProperSubgroup(gl2tab,h1,h3);
    assert gl2IsProperSubgroup(gl2tab,h2,h4);
    assert gl2IsProperSubgroup(gl2tab,h3,h4);
    assert gl2Genus(h1) eq 1 and gl2Genus(h2) eq 0 and gl2Genus(h3) eq 0;
    if h4 eq "" then
        assert gl2tab[h1]`index eq gl2tab[h2]`index * gl2tab[h3]`index;
    else
        assert gl2Genus(h4) eq 0;
        assert gl2tab[h1]`index * gl2tab[h4]`index eq gl2tab[h2]`index * gl2tab[h3]`index;
    end if;
    f124:=Evaluate(f24,f12);
    f134:=Evaluate(f34,f13);
    R<x,y>:=PolynomialRing(Rationals(),2);
    c:=Coefficients(EllipticCurve(ecurve));
    _,pi:=quo<R|y^2+c[3]*y+c[1]*x*y - (x^3+c[2]*x^2+c[4]*x+c[5])>;
    if pi(R!(Numerator(f124)*Denominator(f134)-Numerator(f134)*Denominator(f124))) eq 0 then return true; end if;
    // if map from h4 to X(1) is even, allow a sign difference
    return g0MapIsEven(gl2tab,h4) and pi(R!(Numerator(f124)*Denominator(f134)+Numerator(f134)*Denominator(f124))) eq 0;
end function;

procedure g1Verify(:plist:=[])
    print "This should take about 4 hours (but YMMV).";
    // First verify that we have the complete list of GL2 groups of prime power level with full det and cc
    c:=0;
    for p in Sort([p:p in Set([sl2Base(k) :k in Keys(sl2tab) | sl2Level(k) gt 1])]) do
        printf "Computing genus one subgroups of GL(2,Z_%o) with full det and complex conjugation...\n", p;
        S:=Sort([k : k in Keys(sl2tab) | sl2Base(k) eq p and sl2Genus(k) eq 1], sl2LabelCmp);
        T:=[k:k in Keys(gl2tab)| gl2Base(k) eq p and gl2Genus(k) eq 1];
        m:=Max([Valuation(sl2Base(k),p) : k in S] cat [Valuation(gl2Level(k),p) : k in Keys(gl2tab) | gl2Genus(k) eq 0]);  // m is a strict lower bound on the least e we need to consider
        e:=1;
        while true do
            N := p^e;
            printf "Checking level %o...", N;
            R := [<k,gl2QImagesFromSL2(sl2Lift(sl2Group(sl2tab, k),N))> : k in S | sl2Level(k) le N];
            R := [r:r in R | #r[2] gt 0];
            n := #R gt 0 select &+[#r[2]:r in R] else 0;
            printf "found %o genus one subgroups of GL(2,Z_%o) of level %o\n",  n, p, N;
            if n eq 0 and e gt m then break; end if;    // note that for p=2 m is greater than 2
            c +:= n;
            G:=GL(2,Integers(N));
            for r in R do
                print r[1],#r[2];
                for H in r[2] do
                    assert #[k : k in T | sl2Label(k) eq r[1] and gl2Level(k) eq N and IsConjugate(G,H,gl2Group(gl2tab,k))] eq 1;
                end for;
            end for;
            e +:= 1;
        end while;
    end for;
    printf "Found a total of %o genus one GL2 groups of prime-power level with full determinant and complex conjugation\n", c;
    assert c eq #[k: k in Keys(gl2tab) | gl2Genus(k) eq 1];
    for k in Sort([k:k in Keys(gl2tab) | gl2Genus(k) eq 1], gl2LabelCmp) do
        print "Verifying", k;
        r:=gl2tab[k];
        // verify basic gl2 data (index, newness, contains -1, full det, contains cc)
        assert r`genus eq 1;
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
        S:={j : j in Keys(gl2tab) | gl2IsProperSubgroup(gl2tab, j,k)};
        assert {m:m in gl2tab[k]`msubs} eq {j : j  in S | IsEmpty({i : i in S | gl2IsProperSubgroup(gl2tab,j,i)})};
        // verify fiber product construction, if applicable
        if assigned gl2tab[k]`product then
            assert g1VerifyFiberProduct(gl2tab,gl2tab[k]`curve,gl2tab[k]`product[1],gl2tab[k]`product[2]);
        end if; 
        // verify isogeny class an drank
        s,r := JacobianOfXG(gl2Group(gl2tab,k));
        assert s eq gl2tab[k]`class and r eq gl2tab[k]`rank;
    end for;
    print "All genus 1 group verifications succeeded";
end procedure;

// Attempt to construct as many genus 1 curves of positive rank that we can as fiber products of genus 0 curves
function g1ConstructFiberProducts(tab:minrank:=1,elllist:=[2,3,5,7,11,13])
    L:=[];
    S:={k:k in Keys(tab)|gl2Genus(k) eq 0 and #[h:h in gl2Subgroups(tab,k)|gl2Genus(h) eq 1 and tab[h]`rank ge minrank] gt 0};
    for p in Subsets(S,2) do
        h1:=[k:k in p][1]; h2:=[k:k in p][2];
        C:=[k:k in gl2MaximalCommonSubgroups(tab,h1,h2)|gl2Genus(k) eq 1 and tab[k]`rank ge minrank and PrimeDivisors(gl2Level(k))[1] in elllist];
        if #C eq 0 then continue; end if;
        B:=gl2MinimalCommonSupergroups(tab,h1,h2);
        if #B eq 0 then
            if tab[h1]`index * tab[h2]`index ne tab[C[1]]`index then continue; end if;
            // try both orderings of h1 and h2, this can effect the maps we get
            r:=g1FiberProduct(tab,h1,h2,"");
            if #r gt 0 then L := Append(L,r); end if;
            r:=g1FiberProduct(tab,h2,h1,"");
            if #r gt 0 then L := Append(L,r); end if;
        else
            if tab[h1]`index * tab[h2]`index ne tab[C[1]]`index * tab[B[1]]`index then continue; end if;
            for b in B do
                r:= g1FiberProduct(tab,h1,h2,b);
                if #r gt 0 then L := Append(L,r); end if;
                r:= g1FiberProduct(tab,h2,h1,b);
                if #r gt 0 then L := Append(L,r); end if;
            end for;
        end if;
    end for;
    // pick nicest maps, order factors so that factor with nicer map comes first
    L:=Sort(L, function(a,b) n:=gl2LabelCmp(a[1],b[1]); if n ne 0 then return n; end if; return Min([#Sprintf("%o",a[6]),#Sprintf("%o",a[7])]) - Min([#Sprintf("%o",b[6]),#Sprintf("%o",b[7])]); end function);
    L:=[L[i]:i in [1..#L] | i eq 1 or L[i][1] ne L[i-1][1]];
    L:=[<r[1],r[2],r[3+i],r[4-i],r[5], r[6+i],r[7-i]> where i := #Sprintf("%o",r[6]) le #Sprintf("%o",r[7]) select 0 else 1 : r in L | tab[r[1]]`rank gt 0];
    for r in L do
        assert g1VerifyFiberProduct(tab,r[2],[r[1],r[3],r[4],r[5]],<r[6],r[7],g0Map(tab,r[3]:target:=r[5]),g0Map(tab,r[4]:target:=r[5])>);
    end for;
    return L;
end function;

function SprintGens(gens)
    if Type(gens) eq SetEnum then
        return StripWhiteSpace(Sprintf("%o",[[g[1][1],g[1][2],g[2][1],g[2][2]]:g in gens]));
    else
        return StripWhiteSpace(Sprintf("%o", gens));
    end if;
end function;
    
function UnSplit(strings,sep)
    if #strings eq 0 then return ""; end if;
    s := strings[1];
    for i in [2..#strings] do s cat:=sep cat strings[i]; end for;
    return s;
end function;
    
function SprintFactoredPolynomial(f,vars)
    a,c:=Factorization(Numerator(f));
    if #a eq 0 then return Sprintf("%o",c); end if;
    if c ne 1 then s:= Sprintf("%o*",c); else s:= ""; end if;
    s cat:= UnSplit([Sprintf ("(%o)%o", Evaluate(b[1],vars), b[2] eq 1 select "" else Sprintf ("^%o",b[2])) : b in a], "*");
    return s;
end function;
    
function SprintFactoredRationalFunction(f,vars)
    return SprintFactoredPolynomial(Numerator(f),vars) cat (Denominator(f) ne 1 select " / (" cat SprintFactoredPolynomial(Denominator(f),vars) cat ")" else "");
end function;

function CompareGroupDataStrings(s1,s2)
    a:=eval(s1); b:=eval(s2);
    if a[2] ne b[2] then return a[2]-b[2]; end if;
    if a[3] ne b[3] then return a[3]-b[3]; end if;
    if a[4] ne b[4] then return a[4]-b[4]; end if;
    if a[1] lt b[1] then return -1; elif a[1] gt b[1] then return 1; end if;
    return 0;
end function;

procedure PrintGroups()
    Ft<t>:=FunctionField(Rationals());
    Fxy<x,y>:=FunctionField(Rationals(),2);
    g0:=[k:k in Keys(gl2tab)|gl2Genus(k) eq 0];
    g1:=[k:k in Keys(gl2tab)|gl2Genus(k) eq 1 and gl2tab[k]`rank gt 0];
    g1x:=[k:k in Keys(gl2tab)|gl2Genus(k) eq 1 and gl2tab[k]`rank gt 0 and #gl2tab[k]`jlist gt 0];
    g0twists := [gl2QTwists(gl2Group(gl2tab,k)):k in g0];
    g1twists := [gl2QTwists(gl2Group(gl2tab,k)):k in g1x];
    S:=[Sprintf("<\"%o\", %o, %o, 0, %o,", r`label, r`gl2level, r`index, SprintGens(r`gens))
        cat (#g0twists[i] gt 0 select Sprintf("\n[\n    %o\n],\n", UnSplit(Sort([Sprintf("<%o, %o>", #BaseRing(H), SprintGens(Generators(H))):H in g0twists[i]]),",\n    ")) else "[],\n")
        cat Sprintf("\"P^1(t)\", %o>", SprintFactoredRationalFunction(g0Map(gl2tab,r`label),t)) where r:=gl2tab[g0[i]]: i in [1..#g0]];
    S cat:= [Sprintf("<\"%o\", %o, %o, 1, %o,", r`label, r`gl2level, r`index, SprintGens(r`gens))
        cat (#g1twists[i] gt 0 select Sprintf("\n[\n    %o\n],\n", UnSplit(Sort([Sprintf("<%o, %o>", #BaseRing(H), SprintGens(Generators(H))):H in g1twists[i]]),",\n    ")) else "[],\n")
        cat Sprintf("%o,\n%o>", StripWhiteSpace(Sprintf("%o",Coefficients(EllipticCurve(gl2tab[g1x[i]]`curve)))), SprintFactoredRationalFunction(g1Map(gl2tab,r`label),[x,y])) where r:=gl2tab[g1x[i]]: i in [1..#g1x]];
    S:=Sort(S,CompareGroupDataStrings);
    print "// List of groups described in the paper \"Modular curves of prime power level with infinitely many rational points\" by Andrew V. Sutherland and David Zywina";
    print "//";
    print "// Record format is <label, level, index, genus, generators, twists, model, jmap>";
    print "// where twists is a list of pairs <level, generators> and model is either P^1 (genus 0),";
    print "// or the Weiestrass coeffs [a1,a2,a3,a4,a6] of an elliptic curve (genus 1)";
    print "// The following groups are omitted because no E/Q has this exact image:";
    printf "//    %o\n", UnSplit([s:s in Set(g1) diff Set(g1x)],", ");
    print "";
    print "F<t>:=FunctionField(Rationals());";
    print "FF<x,y>:=FunctionField(Rationals(),2);";
    print "groups := [*";
    print UnSplit(S,",\n");
    print "*];";
    print "print \"Loaded groups\";";
end procedure;
