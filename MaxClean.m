EntaglementGroup := recformat<G: GrpMat, gens: SeqEnum, level: RngIntElt, H: GrpMat, entlevel: SeqEnum, enttype: SeqEnum, label: SeqEnum, NabG: GrpMat, index: RngIntElt, jmap: FldFunRatUElt, jInvs: SeqEnum, containsmI: BoolElt, explained: BoolElt, EntInKerOfIsog: BoolElt, EM: CrvEll, jEM: FldFunRatMElt>;

MaxCleanGenus0 := AssociativeArray();

MaxCleanGenus0[<[ 2, 3 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 3, 5, 4, 3 ],
[ 5, 3, 3, 2 ],
[ 2, 3, 3, 1 ]
]>, gens := [
[ 3, 5, 4, 3 ],
[ 5, 3, 3, 2 ],
[ 2, 3, 3, 1 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(6)) | [
[ 3, 5, 4, 3 ],
[ 5, 3, 3, 2 ]
]>, label := ["GL2", "3Ns"], NabG:=sub<GL(2,Integers(6)) | [
[ 1, 0, 0, 5 ],
[ 1, 3, 3, 4 ],
[ 5, 0, 0, 1 ]
]>, index := 12, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 5, 5, 0, 5 ],
[ 2, 5, 3, 2 ],
[ 2, 1, 3, 1 ]
]>, gens := [
[ 5, 5, 0, 5 ],
[ 2, 5, 3, 2 ],
[ 2, 1, 3, 1 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(6)) | [
[ 5, 5, 0, 5 ],
[ 2, 5, 3, 2 ],
[ 1, 4, 0, 1 ]
]>, label := ["GL2", "3B"], NabG:=sub<GL(2,Integers(6)) | [
[ 1, 2, 0, 1 ],
[ 4, 3, 3, 1 ],
[ 5, 0, 0, 1 ]
]>, index := 8, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 2, 5, 3, 2 ],
[ 1, 3, 3, 2 ]
]>, gens := [
[ 2, 5, 3, 2 ],
[ 1, 3, 3, 2 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(6)) | [
[ 2, 5, 3, 2 ],
[ 1, 2, 0, 1 ],
[ 4, 1, 3, 1 ]
]>, label := ["GL2", "3B"], NabG:=sub<GL(2,Integers(6)) | [
[ 1, 0, 0, 5 ],
[ 1, 2, 0, 1 ],
[ 1, 3, 3, 4 ]
]>, index := 8, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 5, 1, 4, 1 ],
[ 5, 1, 5, 2 ]
]>, gens := [
[ 5, 1, 4, 1 ],
[ 5, 1, 5, 2 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(6)) | [
[ 5, 1, 4, 1 ],
[ 4, 5, 5, 2 ],
[ 3, 5, 1, 0 ]
]>, label := ["GL2", "3Nn"], NabG:=sub<GL(2,Integers(6)) | [
[ 1, 2, 4, 1 ],
[ 1, 3, 3, 4 ],
[ 5, 0, 0, 5 ]
]>, index := 6, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 0, 1, 1, 3 ],
[ 3, 5, 1, 0 ],
[ 5, 4, 5, 5 ]
]>, gens := [
[ 0, 1, 1, 3 ],
[ 3, 5, 1, 0 ],
[ 5, 4, 5, 5 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(6)) | [
[ 1, 2, 5, 5 ],
[ 0, 5, 1, 3 ]
]>, label := ["GL2", "3Nn"], NabG:=sub<GL(2,Integers(6)) | [
[ 1, 0, 0, 5 ],
[ 1, 3, 3, 4 ],
[ 3, 4, 4, 3 ],
[ 5, 0, 0, 1 ]
]>, index := 6, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >];
MaxCleanGenus0[<[ 2, 3 ], ["S3", "C3"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 5, 1, 4, 3 ],
[ 4, 1, 1, 0 ]
]>, gens := [
[ 5, 1, 4, 3 ],
[ 4, 1, 1, 0 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["S3", "C3"], H:=sub<SL(2,Integers(6)) | [
[ 3, 2, 4, 3 ],
[ 1, 5, 1, 0 ]
]>, label := ["GL2", "GL3"], NabG:=sub<GL(2,Integers(6)) | [
[ 1, 2, 2, 5 ],
[ 5, 0, 0, 5 ],
[ 5, 2, 2, 1 ]
]>, index := 6, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >];
MaxCleanGenus0[<[ 2, 5 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 1, 5, 1, 6 ],
[ 4, 5, 9, 4 ],
[ 3, 5, 3, 6 ]
]>, gens := [
[ 1, 5, 1, 6 ],
[ 4, 5, 9, 4 ],
[ 3, 5, 3, 6 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 1, 5, 1, 6 ],
[ 4, 5, 9, 4 ]
]>, label := ["GL2", "5B.4.1"], NabG:=sub<GL(2,Integers(10)) | [
[ 7, 0, 0, 1 ],
[ 1, 0, 8, 1 ],
[ 6, 5, 5, 1 ]
]>, index := 24, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 1, 5, 9, 6 ],
[ 9, 5, 9, 8 ],
[ 4, 5, 3, 4 ]
]>, gens := [
[ 1, 5, 9, 6 ],
[ 9, 5, 9, 8 ],
[ 4, 5, 3, 4 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 1, 5, 9, 6 ],
[ 4, 5, 3, 4 ]
]>, label := ["GL2", "5B.4.2"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 0, 4, 9 ],
[ 9, 0, 4, 3 ],
[ 1, 0, 0, 9 ],
[ 6, 5, 5, 1 ]
]>, index := 24, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 9, 0, 3, 9 ],
[ 1, 5, 9, 6 ],
[ 7, 5, 7, 4 ]
]>, gens := [
[ 9, 0, 3, 9 ],
[ 1, 5, 9, 6 ],
[ 7, 5, 7, 4 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 9, 0, 3, 9 ],
[ 1, 5, 9, 6 ]
]>, label := ["GL2", "5B.4.1"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 0, 2, 1 ],
[ 7, 0, 0, 9 ],
[ 6, 5, 5, 1 ]
]>, index := 24, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 6, 5, 7, 1 ],
[ 1, 5, 1, 2 ],
[ 9, 5, 4, 9 ]
]>, gens := [
[ 6, 5, 7, 1 ],
[ 1, 5, 1, 2 ],
[ 9, 5, 4, 9 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 6, 5, 7, 1 ],
[ 9, 5, 4, 9 ]
]>, label := ["GL2", "5B.4.2"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 5, 5, 6 ],
[ 1, 0, 6, 7 ],
[ 1, 0, 0, 7 ],
[ 1, 0, 0, 9 ]
]>, index := 24, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 7, 9, 8, 7 ],
[ 0, 3, 9, 5 ]
]>, gens := [
[ 7, 9, 8, 7 ],
[ 0, 3, 9, 5 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 4, 1, 3, 6 ],
[ 1, 6, 3, 9 ],
[ 9, 9, 2, 1 ]
]>, label := ["GL2", "5Nn"], NabG:=sub<GL(2,Integers(10)) | [
[ 7, 0, 0, 7 ],
[ 1, 2, 6, 9 ],
[ 7, 2, 4, 7 ],
[ 6, 5, 5, 1 ]
]>, index := 20, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 7, 9, 3, 2 ],
[ 0, 1, 7, 5 ],
[ 0, 3, 9, 0 ]
]>, gens := [
[ 7, 9, 3, 2 ],
[ 0, 1, 7, 5 ],
[ 0, 3, 9, 0 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 1, 1, 8, 9 ],
[ 3, 2, 4, 3 ],
[ 9, 4, 7, 1 ]
]>, label := ["GL2", "5Nn"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 2, 4, 1 ],
[ 1, 5, 5, 6 ],
[ 7, 0, 0, 7 ]
]>, index := 20, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 9, 5, 9, 4 ],
[ 3, 5, 7, 4 ],
[ 8, 5, 7, 8 ]
]>, gens := [
[ 9, 5, 9, 4 ],
[ 3, 5, 7, 4 ],
[ 8, 5, 7, 8 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 9, 5, 9, 4 ],
[ 2, 5, 7, 8 ]
]>, label := ["GL2", "5B"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 5, 5, 6 ],
[ 7, 0, 0, 1 ],
[ 1, 0, 6, 9 ],
[ 1, 0, 0, 9 ]
]>, index := 12, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 2, 5, 1, 2 ],
[ 9, 5, 9, 8 ],
[ 9, 5, 1, 4 ]
]>, gens := [
[ 2, 5, 1, 2 ],
[ 9, 5, 9, 8 ],
[ 9, 5, 1, 4 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 8, 5, 1, 2 ],
[ 9, 5, 1, 4 ]
]>, label := ["GL2", "5B"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 5, 5, 6 ],
[ 9, 0, 0, 1 ],
[ 1, 0, 2, 7 ],
[ 1, 0, 2, 9 ],
[ 1, 0, 0, 9 ]
]>, index := 12, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >];
MaxCleanGenus0[<[ 2, 5 ], ["S3", "C3"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 1, 3, 9, 6 ],
[ 2, 3, 7, 5 ],
[ 0, 7, 9, 0 ]
]>, gens := [
[ 1, 3, 9, 6 ],
[ 2, 3, 7, 5 ],
[ 0, 7, 9, 0 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["S3", "C3"], H:=sub<SL(2,Integers(10)) | [
[ 5, 1, 9, 6 ],
[ 6, 7, 7, 5 ]
]>, label := ["GL2", "5S4"], NabG:=sub<GL(2,Integers(10)) | [
[ 7, 0, 6, 3 ],
[ 7, 2, 6, 3 ],
[ 1, 0, 8, 9 ]
]>, index := 30, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >];
MaxCleanGenus0[<[ 2, 7 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 9, 9, 10, 11 ],
[ 10, 11, 9, 8 ],
[ 1, 11, 9, 6 ],
[ 11, 12, 11, 9 ]
]>, gens := [
[ 9, 9, 10, 11 ],
[ 10, 11, 9, 8 ],
[ 1, 11, 9, 6 ],
[ 11, 12, 11, 9 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 11, 5, 10, 11 ],
[ 0, 3, 9, 8 ]
]>, label := ["GL2", "7B"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 2, 2, 5 ],
[ 3, 0, 10, 11 ],
[ 1, 7, 7, 8 ],
[ 1, 0, 2, 11 ]
]>, index := 16, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 10, 11, 9, 8 ],
[ 8, 1, 5, 2 ],
[ 1, 4, 9, 13 ],
[ 5, 3, 8, 1 ]
]>, gens := [
[ 10, 11, 9, 8 ],
[ 8, 1, 5, 2 ],
[ 1, 4, 9, 13 ],
[ 5, 3, 8, 1 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 0, 3, 9, 8 ],
[ 6, 5, 5, 2 ],
[ 9, 2, 9, 13 ]
]>, label := ["GL2", "7B"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 8, 13 ],
[ 1, 2, 12, 13 ],
[ 1, 7, 7, 8 ],
[ 1, 0, 2, 11 ],
[ 9, 0, 10, 3 ]
]>, index := 16, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := true >];
MaxCleanGenus0[<[ 2, 7 ], ["C3", "C3"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 3, 11, 9, 8 ],
[ 1, 4, 2, 13 ],
[ 3, 4, 6, 7 ]
]>, gens := [
[ 3, 11, 9, 8 ],
[ 1, 4, 2, 13 ],
[ 3, 4, 6, 7 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C3", "C3"], H:=sub<SL(2,Integers(14)) | [
[ 13, 0, 0, 13 ],
[ 3, 9, 11, 10 ],
[ 5, 5, 5, 8 ]
]>, label := ["2Cn", "7B"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 8, 13 ],
[ 1, 2, 12, 13 ],
[ 3, 0, 0, 3 ]
]>, index := 48, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 1, 11, 9, 6 ],
[ 7, 13, 9, 6 ],
[ 10, 11, 9, 1 ]
]>, gens := [
[ 1, 11, 9, 6 ],
[ 7, 13, 9, 6 ],
[ 10, 11, 9, 1 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C3", "C3"], H:=sub<SL(2,Integers(14)) | [
[ 0, 3, 9, 1 ],
[ 9, 9, 9, 6 ]
]>, label := ["2Cn", "7B"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 8, 13 ],
[ 13, 0, 0, 13 ],
[ 3, 6, 0, 13 ],
[ 1, 0, 2, 11 ]
]>, index := 48, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 10, 11, 13, 7 ],
[ 3, 4, 2, 1 ],
[ 1, 11, 9, 6 ]
]>, gens := [
[ 10, 11, 13, 7 ],
[ 3, 4, 2, 1 ],
[ 1, 11, 9, 6 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C3", "C3"], H:=sub<SL(2,Integers(14)) | [
[ 3, 6, 2, 9 ],
[ 13, 4, 6, 3 ],
[ 10, 9, 11, 3 ]
]>, label := ["2Cn", "7B"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 8, 13 ],
[ 3, 0, 8, 1 ],
[ 1, 2, 8, 7 ]
]>, index := 48, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >];
MaxCleanGenus0[<[ 2, 13 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(26)) | [
[ 23, 13, 8, 23 ],
[ 3, 0, 25, 21 ],
[ 23, 0, 9, 23 ]
]>, gens := [
[ 23, 13, 8, 23 ],
[ 3, 0, 25, 21 ],
[ 23, 0, 9, 23 ]
], level := 26, entlevel := [ 2, 13 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(26)) | [
[ 17, 0, 9, 23 ],
[ 17, 13, 8, 23 ]
]>, label := ["GL2", "13B.4.2"], NabG:=sub<GL(2,Integers(26)) | [
[ 17, 0, 24, 5 ],
[ 1, 13, 13, 14 ],
[ 1, 0, 0, 25 ],
[ 1, 0, 14, 9 ],
[ 1, 0, 10, 25 ]
]>, index := 56, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(26)) | [
[ 19, 0, 14, 3 ],
[ 17, 0, 17, 17 ],
[ 23, 13, 6, 23 ]
]>, gens := [
[ 19, 0, 14, 3 ],
[ 17, 0, 17, 17 ],
[ 23, 13, 6, 23 ]
], level := 26, entlevel := [ 2, 13 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(26)) | [
[ 17, 13, 6, 23 ],
[ 9, 0, 14, 3 ],
[ 23, 0, 17, 17 ]
]>, label := ["GL2", "13B.4.1"], NabG:=sub<GL(2,Integers(26)) | [
[ 14, 13, 13, 1 ],
[ 1, 0, 24, 9 ],
[ 1, 0, 8, 9 ],
[ 15, 0, 0, 1 ]
]>, index := 56, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(26)) | [
[ 4, 13, 5, 20 ],
[ 10, 13, 13, 18 ],
[ 4, 13, 3, 4 ],
[ 17, 0, 9, 17 ]
]>, gens := [
[ 4, 13, 5, 20 ],
[ 10, 13, 13, 18 ],
[ 4, 13, 3, 4 ],
[ 17, 0, 9, 17 ]
], level := 26, entlevel := [ 2, 13 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(26)) | [
[ 23, 0, 9, 17 ],
[ 10, 13, 3, 4 ]
]>, label := ["GL2", "13B.4.2"], NabG:=sub<GL(2,Integers(26)) | [
[ 1, 13, 13, 14 ],
[ 1, 0, 0, 25 ],
[ 1, 0, 18, 19 ],
[ 3, 0, 0, 1 ]
]>, index := 56, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(26)) | [
[ 17, 0, 23, 17 ],
[ 17, 13, 20, 17 ],
[ 8, 13, 9, 17 ],
[ 15, 13, 23, 10 ]
]>, gens := [
[ 17, 0, 23, 17 ],
[ 17, 13, 20, 17 ],
[ 8, 13, 9, 17 ],
[ 15, 13, 23, 10 ]
], level := 26, entlevel := [ 2, 13 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(26)) | [
[ 23, 13, 20, 17 ],
[ 23, 0, 23, 17 ]
]>, label := ["GL2", "13B.4.1"], NabG:=sub<GL(2,Integers(26)) | [
[ 1, 0, 4, 9 ],
[ 1, 13, 13, 14 ],
[ 15, 0, 0, 25 ],
[ 1, 0, 22, 9 ]
]>, index := 56, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(26)) | [
[ 2, 13, 3, 2 ],
[ 19, 0, 23, 19 ],
[ 6, 13, 5, 1 ]
]>, gens := [
[ 2, 13, 3, 2 ],
[ 19, 0, 23, 19 ],
[ 6, 13, 5, 1 ]
], level := 26, entlevel := [ 2, 13 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(26)) | [
[ 20, 13, 3, 2 ],
[ 11, 0, 23, 19 ]
]>, label := ["GL2", "13B"], NabG:=sub<GL(2,Integers(26)) | [
[ 1, 13, 13, 14 ],
[ 1, 0, 0, 25 ],
[ 1, 0, 8, 25 ],
[ 1, 0, 24, 9 ],
[ 15, 0, 0, 1 ]
]>, index := 28, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(26)) | [
[ 19, 0, 1, 19 ],
[ 2, 13, 9, 2 ],
[ 15, 13, 24, 9 ]
]>, gens := [
[ 19, 0, 1, 19 ],
[ 2, 13, 9, 2 ],
[ 15, 13, 24, 9 ]
], level := 26, entlevel := [ 2, 13 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(26)) | [
[ 20, 13, 9, 2 ],
[ 11, 0, 1, 19 ]
]>, label := ["GL2", "13B"], NabG:=sub<GL(2,Integers(26)) | [
[ 14, 13, 13, 1 ],
[ 1, 0, 0, 25 ],
[ 1, 0, 12, 15 ],
[ 17, 0, 0, 1 ],
[ 1, 0, 18, 3 ]
]>, index := 28, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >];
MaxCleanGenus0[<[ 3, 5 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 14, 1, 11, 5 ],
[ 1, 14, 1, 1 ],
[ 7, 2, 7, 4 ],
[ 11, 14, 14, 10 ]
]>, gens := [
[ 14, 1, 11, 5 ],
[ 1, 14, 1, 1 ],
[ 7, 2, 7, 4 ],
[ 11, 14, 14, 10 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 5, 11, 14, 10 ],
[ 14, 13, 1, 1 ],
[ 10, 14, 11, 5 ]
]>, label := ["3Nn", "5B"], NabG:=sub<GL(2,Integers(15)) | [
[ 4, 0, 9, 1 ],
[ 11, 0, 0, 1 ],
[ 6, 5, 5, 6 ],
[ 13, 12, 12, 10 ],
[ 1, 0, 9, 13 ],
[ 1, 0, 0, 11 ]
]>, index := 36, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 14, 1, 11, 5 ],
[ 7, 7, 7, 14 ],
[ 2, 13, 5, 11 ],
[ 2, 7, 2, 14 ]
]>, gens := [
[ 14, 1, 11, 5 ],
[ 7, 7, 7, 14 ],
[ 2, 13, 5, 11 ],
[ 2, 7, 2, 14 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 10, 14, 11, 5 ],
[ 1, 4, 7, 14 ]
]>, label := ["3Nn", "5B"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 9, 6, 1 ],
[ 11, 0, 0, 1 ],
[ 6, 5, 10, 6 ],
[ 7, 0, 3, 1 ],
[ 1, 0, 6, 4 ],
[ 1, 0, 0, 11 ]
]>, index := 36, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >];
EntaglementGroup := recformat<G: GrpMat, gens: SeqEnum, level: RngIntElt, H: GrpMat, entlevel: SeqEnum, enttype: SeqEnum, label: SeqEnum, NabG: GrpMat, index: RngIntElt, jmap: FldFunRatUElt, jInvs: SeqEnum, containsmI: BoolElt, explained: BoolElt, EntInKerOfIsog: BoolElt, EM: CrvEll, jEM: FldFunRatMElt>;

MaxCleanGenus1r0 := AssociativeArray();

MaxCleanGenus1r0[<[ 2, 5 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 6, 3, 9, 9 ],
[ 0, 7, 1, 6 ],
[ 5, 3, 1, 0 ]
]>, gens := [
[ 6, 3, 9, 9 ],
[ 0, 7, 1, 6 ],
[ 5, 3, 1, 0 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 2, 7, 5, 8 ],
[ 3, 0, 9, 7 ]
]>, label := ["GL2", "5Ns"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 5, 5, 6 ],
[ 7, 2, 6, 3 ],
[ 7, 0, 0, 7 ],
[ 9, 2, 6, 1 ]
]>, index := 30, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 3, 5, 5, 8 ],
[ 0, 1, 3, 3 ],
[ 0, 7, 9, 0 ]
]>, gens := [
[ 3, 5, 5, 8 ],
[ 0, 1, 3, 3 ],
[ 0, 7, 9, 0 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 2, 7, 5, 8 ],
[ 4, 5, 5, 9 ],
[ 8, 5, 9, 2 ]
]>, label := ["GL2", "5Ns"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 5, 5, 6 ],
[ 7, 2, 6, 3 ],
[ 7, 0, 0, 7 ],
[ 9, 2, 6, 5 ]
]>, index := 30, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >];
MaxCleanGenus1r0[<[ 2, 5 ], ["S3", "S3"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 8, 1, 7, 3 ],
[ 0, 3, 9, 0 ]
]>, gens := [
[ 8, 1, 7, 3 ],
[ 0, 3, 9, 0 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["S3", "S3"], H:=sub<SL(2,Integers(10)) | [
[ 1, 9, 2, 9 ],
[ 9, 4, 7, 1 ]
]>, label := ["GL2", "5Nn"], NabG:=sub<GL(2,Integers(10)) | [
[ 7, 0, 0, 7 ],
[ 5, 8, 6, 5 ]
]>, index := 60, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >];
MaxCleanGenus1r0[<[ 2, 7 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 10, 11, 9, 8 ],
[ 8, 11, 9, 6 ],
[ 12, 3, 1, 8 ]
]>, gens := [
[ 10, 11, 9, 8 ],
[ 8, 11, 9, 6 ],
[ 12, 3, 1, 8 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 0, 3, 9, 8 ],
[ 2, 9, 9, 6 ]
]>, label := ["2B", "7B"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 6, 3 ],
[ 1, 0, 10, 9 ],
[ 9, 0, 0, 9 ],
[ 1, 2, 0, 9 ]
]>, index := 48, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 10, 11, 9, 8 ],
[ 1, 4, 2, 13 ],
[ 4, 5, 11, 2 ]
]>, gens := [
[ 10, 11, 9, 8 ],
[ 1, 4, 2, 13 ],
[ 4, 5, 11, 2 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 0, 3, 9, 8 ],
[ 6, 1, 11, 2 ]
]>, label := ["2B", "7B"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 2, 10, 3 ],
[ 1, 0, 10, 9 ],
[ 3, 0, 4, 9 ]
]>, index := 48, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 1, 1, 4, 13 ],
[ 3, 12, 3, 11 ],
[ 13, 7, 9, 8 ],
[ 7, 10, 11, 7 ]
]>, gens := [
[ 1, 1, 4, 13 ],
[ 3, 12, 3, 11 ],
[ 13, 7, 9, 8 ],
[ 7, 10, 11, 7 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 5, 5, 6, 9 ],
[ 5, 9, 9, 8 ],
[ 6, 9, 9, 9 ],
[ 13, 2, 2, 9 ]
]>, label := ["GL2", "7Ns"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 12, 13 ],
[ 3, 0, 8, 11 ],
[ 3, 8, 8, 1 ],
[ 8, 7, 7, 1 ]
]>, index := 56, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 0, 3, 3, 2 ],
[ 7, 11, 4, 5 ],
[ 7, 10, 11, 7 ]
]>, gens := [
[ 0, 3, 3, 2 ],
[ 7, 11, 4, 5 ],
[ 7, 10, 11, 7 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 3, 6, 3, 11 ],
[ 12, 11, 11, 2 ],
[ 9, 3, 10, 5 ]
]>, label := ["GL2", "7Nn"], NabG:=sub<GL(2,Integers(14)) | [
[ 3, 2, 0, 11 ],
[ 3, 0, 2, 11 ],
[ 1, 0, 10, 13 ],
[ 1, 7, 7, 8 ]
]>, index := 42, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >];
MaxCleanGenus1r0[<[ 3, 5 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 7, 3, 3, 5 ],
[ 2, 14, 9, 11 ],
[ 8, 1, 0, 11 ]
]>, gens := [
[ 7, 3, 3, 5 ],
[ 2, 14, 9, 11 ],
[ 8, 1, 0, 11 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 1, 10, 0, 1 ],
[ 2, 14, 9, 11 ]
]>, label := ["3B", "5B.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 4, 0, 6, 7 ],
[ 7, 3, 3, 10 ],
[ 1, 0, 6, 4 ],
[ 1, 10, 0, 11 ],
[ 1, 0, 0, 11 ]
]>, index := 96, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 11, 11, 6, 2 ],
[ 2, 3, 3, 10 ],
[ 8, 1, 0, 11 ]
]>, gens := [
[ 11, 11, 6, 2 ],
[ 2, 3, 3, 10 ],
[ 8, 1, 0, 11 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 1, 5, 0, 1 ],
[ 11, 11, 6, 2 ]
]>, label := ["3B", "5B.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 4, 0, 6, 7 ],
[ 11, 0, 0, 1 ],
[ 11, 10, 0, 1 ],
[ 1, 0, 6, 4 ],
[ 7, 3, 9, 13 ]
]>, index := 96, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 11, 11, 6, 2 ],
[ 2, 3, 3, 10 ],
[ 8, 7, 3, 8 ]
]>, gens := [
[ 11, 11, 6, 2 ],
[ 2, 3, 3, 10 ],
[ 8, 7, 3, 8 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 1, 5, 0, 1 ],
[ 11, 11, 6, 2 ]
]>, label := ["3B", "5B.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 11, 0, 0, 1 ],
[ 11, 10, 0, 1 ],
[ 1, 0, 9, 13 ],
[ 10, 12, 3, 10 ]
]>, index := 96, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 7, 0, 13, 1 ],
[ 11, 6, 11, 2 ],
[ 8, 6, 6, 4 ]
]>, gens := [
[ 7, 0, 13, 1 ],
[ 11, 6, 11, 2 ],
[ 8, 6, 6, 4 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 11, 6, 11, 2 ]
]>, label := ["3B", "5B.4.2"], NabG:=sub<GL(2,Integers(15)) | [
[ 7, 3, 3, 10 ],
[ 1, 0, 10, 1 ],
[ 11, 0, 0, 1 ],
[ 7, 0, 3, 1 ]
]>, index := 96, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 2, 0, 8, 11 ],
[ 11, 6, 11, 2 ],
[ 8, 6, 6, 4 ]
]>, gens := [
[ 2, 0, 8, 11 ],
[ 11, 6, 11, 2 ],
[ 8, 6, 6, 4 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 11, 6, 11, 2 ]
]>, label := ["3B", "5B.4.2"], NabG:=sub<GL(2,Integers(15)) | [
[ 7, 12, 9, 10 ],
[ 1, 0, 10, 1 ],
[ 11, 0, 0, 1 ],
[ 7, 0, 9, 4 ]
]>, index := 96, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 13, 6, 11, 14 ],
[ 10, 9, 7, 13 ],
[ 8, 12, 7, 5 ]
]>, gens := [
[ 13, 6, 11, 14 ],
[ 10, 9, 7, 13 ],
[ 8, 12, 7, 5 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 8, 12, 7, 5 ]
]>, label := ["3B", "5B.4.2"], NabG:=sub<GL(2,Integers(15)) | [
[ 7, 12, 3, 7 ],
[ 1, 0, 5, 11 ],
[ 7, 0, 3, 1 ],
[ 1, 0, 5, 1 ]
]>, index := 96, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 13, 6, 11, 14 ],
[ 5, 9, 2, 8 ],
[ 8, 12, 7, 5 ]
]>, gens := [
[ 13, 6, 11, 14 ],
[ 5, 9, 2, 8 ],
[ 8, 12, 7, 5 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 8, 12, 7, 5 ]
]>, label := ["3B", "5B.4.2"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 0, 10, 1 ],
[ 10, 3, 12, 10 ],
[ 7, 0, 9, 4 ],
[ 1, 0, 0, 11 ]
]>, index := 96, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 7, 3, 3, 5 ],
[ 11, 1, 6, 2 ],
[ 4, 4, 6, 4 ]
]>, gens := [
[ 7, 3, 3, 5 ],
[ 11, 1, 6, 2 ],
[ 4, 4, 6, 4 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 1, 5, 0, 1 ],
[ 11, 1, 6, 2 ]
]>, label := ["3B", "5B.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 5, 0, 1 ],
[ 1, 0, 6, 4 ],
[ 1, 0, 12, 7 ],
[ 7, 3, 9, 13 ],
[ 1, 0, 0, 11 ]
]>, index := 96, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 6, 14, 4, 0 ],
[ 3, 8, 8, 6 ],
[ 3, 5, 7, 9 ]
]>, gens := [
[ 6, 14, 4, 0 ],
[ 3, 8, 8, 6 ],
[ 3, 5, 7, 9 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 5, 12, 12, 2 ],
[ 9, 1, 8, 6 ],
[ 0, 11, 4, 0 ]
]>, label := ["3Ns", "5B"], NabG:=sub<GL(2,Integers(15)) | [
[ 13, 12, 3, 13 ],
[ 11, 0, 0, 1 ],
[ 4, 0, 0, 4 ],
[ 1, 0, 9, 13 ],
[ 1, 0, 0, 11 ]
]>, index := 72, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 12, 7, 2, 9 ],
[ 3, 8, 8, 6 ],
[ 3, 13, 8, 6 ],
[ 3, 1, 5, 6 ]
]>, gens := [
[ 12, 7, 2, 9 ],
[ 3, 8, 8, 6 ],
[ 3, 13, 8, 6 ],
[ 3, 1, 5, 6 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 6, 4, 2, 9 ],
[ 9, 1, 8, 6 ],
[ 8, 12, 12, 5 ]
]>, label := ["3Ns", "5B"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 12, 6, 10 ],
[ 11, 0, 0, 1 ],
[ 7, 0, 9, 4 ],
[ 1, 0, 6, 4 ],
[ 1, 0, 0, 11 ]
]>, index := 72, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 2, 7, 12, 14 ],
[ 8, 13, 3, 1 ],
[ 8, 1, 0, 11 ]
]>, gens := [
[ 2, 7, 12, 14 ],
[ 8, 13, 3, 1 ],
[ 8, 1, 0, 11 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 13, 7, 12, 10 ],
[ 1, 5, 0, 1 ],
[ 11, 4, 12, 14 ]
]>, label := ["3B", "5B"], NabG:=sub<GL(2,Integers(15)) | [
[ 7, 12, 9, 10 ],
[ 7, 0, 3, 1 ],
[ 1, 5, 0, 11 ],
[ 1, 0, 6, 4 ],
[ 1, 0, 0, 11 ]
]>, index := 48, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 14, 13, 3, 2 ],
[ 8, 13, 3, 1 ],
[ 2, 5, 9, 14 ]
]>, gens := [
[ 14, 13, 3, 2 ],
[ 8, 13, 3, 1 ],
[ 2, 5, 9, 14 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 1, 10, 0, 1 ],
[ 8, 5, 3, 2 ],
[ 11, 7, 9, 14 ]
]>, label := ["3B", "5B"], NabG:=sub<GL(2,Integers(15)) | [
[ 4, 0, 9, 1 ],
[ 1, 6, 6, 7 ],
[ 1, 5, 0, 11 ],
[ 1, 0, 6, 4 ],
[ 1, 0, 12, 7 ],
[ 1, 0, 0, 11 ]
]>, index := 48, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 4, 8, 3, 2 ],
[ 4, 14, 6, 4 ],
[ 11, 4, 9, 5 ]
]>, gens := [
[ 4, 8, 3, 2 ],
[ 4, 14, 6, 4 ],
[ 11, 4, 9, 5 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 1, 5, 0, 1 ],
[ 13, 6, 6, 4 ],
[ 8, 0, 3, 2 ]
]>, label := ["3B", "5B"], NabG:=sub<GL(2,Integers(15)) | [
[ 4, 0, 9, 1 ],
[ 1, 5, 0, 1 ],
[ 11, 0, 0, 1 ],
[ 1, 0, 6, 4 ],
[ 10, 12, 12, 7 ],
[ 1, 0, 9, 13 ]
]>, index := 48, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 8, 1, 0, 11 ],
[ 1, 14, 9, 5 ],
[ 11, 4, 9, 5 ]
]>, gens := [
[ 8, 1, 0, 11 ],
[ 1, 14, 9, 5 ],
[ 11, 4, 9, 5 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 5, 1, 9, 5 ],
[ 1, 10, 0, 1 ],
[ 7, 9, 9, 1 ]
]>, label := ["3B", "5B"], NabG:=sub<GL(2,Integers(15)) | [
[ 11, 0, 0, 1 ],
[ 11, 5, 0, 1 ],
[ 7, 0, 3, 1 ],
[ 1, 0, 6, 4 ],
[ 4, 3, 9, 10 ]
]>, index := 48, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >];
MaxCleanGenus1r0[<[ 3, 7 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 8, 12, 9, 19 ],
[ 8, 18, 9, 20 ],
[ 11, 12, 13, 5 ],
[ 20, 3, 11, 14 ]
]>, gens := [
[ 8, 12, 9, 19 ],
[ 8, 18, 9, 20 ],
[ 11, 12, 13, 5 ],
[ 20, 3, 11, 14 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(21)) | [
[ 8, 12, 11, 14 ],
[ 14, 15, 13, 5 ]
]>, label := ["3B", "7B"], NabG:=sub<GL(2,Integers(21)) | [
[ 1, 0, 7, 8 ],
[ 1, 0, 3, 4 ],
[ 16, 6, 9, 19 ],
[ 1, 0, 14, 1 ],
[ 10, 0, 6, 16 ]
]>, index := 64, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 8, 12, 16, 5 ],
[ 10, 15, 13, 8 ],
[ 17, 12, 16, 14 ],
[ 11, 12, 13, 5 ],
[ 1, 18, 9, 13 ]
]>, gens := [
[ 8, 12, 16, 5 ],
[ 10, 15, 13, 8 ],
[ 17, 12, 16, 14 ],
[ 11, 12, 13, 5 ],
[ 1, 18, 9, 13 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(21)) | [
[ 17, 0, 16, 5 ],
[ 8, 3, 16, 14 ]
]>, label := ["3B", "7B"], NabG:=sub<GL(2,Integers(21)) | [
[ 16, 0, 6, 1 ],
[ 1, 0, 14, 8 ],
[ 1, 0, 9, 10 ],
[ 13, 9, 12, 16 ],
[ 1, 0, 0, 8 ]
]>, index := 64, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 14, 9, 5, 17 ],
[ 19, 9, 5, 8 ],
[ 11, 12, 13, 5 ],
[ 1, 18, 9, 13 ]
]>, gens := [
[ 14, 9, 5, 17 ],
[ 19, 9, 5, 8 ],
[ 11, 12, 13, 5 ],
[ 1, 18, 9, 13 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(21)) | [
[ 5, 0, 5, 17 ],
[ 14, 18, 5, 8 ]
]>, label := ["3B", "7B"], NabG:=sub<GL(2,Integers(21)) | [
[ 1, 0, 3, 4 ],
[ 8, 0, 0, 1 ],
[ 16, 0, 15, 10 ],
[ 1, 0, 9, 10 ],
[ 7, 12, 18, 13 ],
[ 1, 0, 7, 1 ]
]>, index := 64, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 8, 18, 9, 20 ],
[ 11, 12, 13, 5 ],
[ 14, 9, 19, 17 ],
[ 1, 12, 2, 5 ]
]>, gens := [
[ 8, 18, 9, 20 ],
[ 11, 12, 13, 5 ],
[ 14, 9, 19, 17 ],
[ 1, 12, 2, 5 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(21)) | [
[ 14, 15, 13, 5 ],
[ 5, 0, 19, 17 ]
]>, label := ["3B", "7B"], NabG:=sub<GL(2,Integers(21)) | [
[ 1, 0, 15, 16 ],
[ 1, 0, 14, 1 ],
[ 8, 0, 0, 1 ],
[ 10, 0, 6, 16 ],
[ 4, 3, 0, 1 ]
]>, index := 64, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := true >];
EntaglementGroup := recformat<G: GrpMat, gens: SeqEnum, level: RngIntElt, H: GrpMat, entlevel: SeqEnum, enttype: SeqEnum, label: SeqEnum, NabG: GrpMat, index: RngIntElt, jmap: FldFunRatUElt, jInvs: SeqEnum, containsmI: BoolElt, explained: BoolElt, EntInKerOfIsog: BoolElt, EM: CrvEll, jEM: FldFunRatMElt>;

MaxCleanGenus1rp := AssociativeArray();

MaxCleanGenus1rp[<[ 2, 7 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 12, 7, 11, 2 ],
[ 3, 3, 12, 11 ],
[ 7, 4, 3, 7 ],
[ 0, 9, 5, 0 ]
]>, gens := [
[ 12, 7, 11, 2 ],
[ 3, 3, 12, 11 ],
[ 7, 4, 3, 7 ],
[ 0, 9, 5, 0 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 7, 6, 1, 7 ],
[ 12, 5, 13, 2 ],
[ 2, 5, 5, 13 ]
]>, label := ["GL2", "7Ns"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 4, 4, 7 ],
[ 3, 0, 0, 3 ],
[ 8, 7, 7, 1 ]
]>, index := 56, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 9, 2, 2, 1 ],
[ 5, 5, 5, 6 ],
[ 7, 2, 5, 7 ]
]>, gens := [
[ 9, 2, 2, 1 ],
[ 5, 5, 5, 6 ],
[ 7, 2, 5, 7 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 10, 5, 5, 11 ],
[ 8, 3, 3, 3 ],
[ 11, 11, 8, 3 ]
]>, label := ["GL2", "7Nn"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 2, 2, 7 ],
[ 1, 7, 7, 8 ],
[ 3, 0, 0, 3 ]
]>, index := 42, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >];
MaxCleanGenus0GalSort := AssociativeArray();for k in Sort([k : k in Keys(MaxCleanGenus0)]) do	if not k in Keys(MaxCleanGenus0GalSort) then		MaxCleanGenus0GalSort[k] := AssociativeArray();	end if;	for r in MaxCleanGenus0[k] do		if r`label in Keys(MaxCleanGenus0GalSort[k]) then			Append(~MaxCleanGenus0GalSort[k][r`label],r);   	else    		MaxCleanGenus0GalSort[k][r`label]:=[r];	    end if;	end for;end for;