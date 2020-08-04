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
[ 4, 3, 3, 1 ],
[ 5, 0, 0, 1 ]
]>, index := 12, jInvs := [-250047/64, -42875/64, 2352637/4096 ], containsmI := true, explained := false, EntInKerOfIsog := false >,
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
[ 1, 3, 3, 4 ],
[ 5, 0, 0, 1 ]
]>, index := 8, jInvs := [-89915392/6859, 32768/19, -10218313/17576], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 2, 5, 3, 2 ],
[ 1, 3, 3, 2 ]
]>, gens := [
[ 2, 5, 3, 2 ],
[ 1, 3, 3, 2 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(6)) | [
[ 2, 5, 3, 2 ],
[ 4, 1, 3, 1 ],
[ 1, 4, 0, 1 ]
]>, label := ["GL2", "3B"], NabG:=sub<GL(2,Integers(6)) | [
[ 1, 0, 0, 5 ],
[ 1, 2, 0, 1 ],
[ 4, 3, 3, 1 ]
]>, index := 8, jInvs := [-89915392/6859, 32768/19, -10218313/17576], containsmI := false, explained := false, EntInKerOfIsog := true >,
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
[ 3, 2, 4, 3 ],
[ 4, 3, 3, 1 ],
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
[ 6, 5, 3, 1 ],
[ 6, 5, 7, 3 ],
[ 9, 0, 3, 9 ]
]>, gens := [
[ 6, 5, 3, 1 ],
[ 6, 5, 7, 3 ],
[ 9, 0, 3, 9 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 6, 5, 3, 1 ],
[ 9, 0, 3, 9 ]
]>, label := ["GL2", "5B.4.2"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 5, 5, 6 ],
[ 1, 0, 2, 3 ],
[ 1, 0, 0, 9 ]
]>, index := 24, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 6, 5, 3, 1 ],
[ 3, 5, 9, 6 ],
[ 9, 0, 3, 9 ]
]>, gens := [
[ 6, 5, 3, 1 ],
[ 3, 5, 9, 6 ],
[ 9, 0, 3, 9 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 6, 5, 3, 1 ],
[ 9, 0, 3, 9 ]
]>, label := ["GL2", "5B.4.1"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 5, 5, 6 ],
[ 7, 0, 0, 1 ],
[ 1, 0, 4, 1 ]
]>, index := 24, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 6, 5, 1, 1 ],
[ 2, 5, 5, 9 ],
[ 9, 0, 3, 9 ]
]>, gens := [
[ 6, 5, 1, 1 ],
[ 2, 5, 5, 9 ],
[ 9, 0, 3, 9 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 6, 5, 1, 1 ],
[ 9, 0, 5, 9 ]
]>, label := ["GL2", "5B.4.1"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 5, 5, 6 ],
[ 1, 0, 6, 1 ],
[ 7, 0, 0, 9 ]
]>, index := 24, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 9, 5, 5, 8 ],
[ 6, 5, 1, 1 ],
[ 9, 0, 3, 9 ]
]>, gens := [
[ 9, 5, 5, 8 ],
[ 6, 5, 1, 1 ],
[ 9, 0, 3, 9 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 6, 5, 1, 1 ],
[ 9, 0, 3, 9 ]
]>, label := ["GL2", "5B.4.2"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 5, 5, 6 ],
[ 9, 0, 0, 3 ],
[ 1, 0, 6, 9 ],
[ 1, 0, 0, 9 ]
]>, index := 24, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 7, 7, 9, 8 ],
[ 4, 3, 3, 8 ]
]>, gens := [
[ 7, 7, 9, 8 ],
[ 4, 3, 3, 8 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 3, 4, 5, 7 ],
[ 9, 5, 5, 4 ],
[ 6, 3, 3, 5 ]
]>, label := ["GL2", "5Nn"], NabG:=sub<GL(2,Integers(10)) | [
[ 7, 0, 0, 7 ],
[ 1, 2, 6, 9 ],
[ 7, 2, 4, 3 ],
[ 6, 5, 5, 1 ]
]>, index := 20, jInvs := [-1273201875, -17693470720000, -160000 ], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 7, 2, 9, 3 ],
[ 9, 3, 3, 8 ],
[ 4, 3, 3, 3 ]
]>, gens := [
[ 7, 2, 9, 3 ],
[ 9, 3, 3, 8 ],
[ 4, 3, 3, 3 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 1, 5, 5, 6 ],
[ 1, 3, 3, 0 ],
[ 3, 9, 0, 7 ]
]>, label := ["GL2", "5Nn"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 5, 5, 6 ],
[ 7, 0, 0, 7 ],
[ 1, 2, 2, 7 ]
]>, index := 20, jInvs := [-20087092248576000/25937424601, -147197952000, -931689686016000/25937424601], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 9, 5, 1, 2 ],
[ 4, 5, 1, 9 ],
[ 8, 5, 1, 8 ]
]>, gens := [
[ 9, 5, 1, 2 ],
[ 4, 5, 1, 9 ],
[ 8, 5, 1, 8 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 8, 5, 1, 2 ],
[ 4, 5, 1, 9 ]
]>, label := ["GL2", "5B"], NabG:=sub<GL(2,Integers(10)) | [
[ 9, 0, 0, 1 ],
[ 1, 0, 2, 3 ],
[ 1, 0, 0, 9 ],
[ 6, 5, 5, 1 ]
]>, index := 12, jInvs := [5451776/9, 27258880, 53312633005/4], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 9, 5, 9, 4 ],
[ 7, 5, 9, 4 ],
[ 2, 5, 7, 2 ]
]>, gens := [
[ 9, 5, 9, 4 ],
[ 7, 5, 9, 4 ],
[ 2, 5, 7, 2 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 9, 5, 9, 4 ],
[ 8, 5, 7, 2 ]
]>, label := ["GL2", "5B"], NabG:=sub<GL(2,Integers(10)) | [
[ 7, 0, 0, 1 ],
[ 1, 0, 0, 9 ],
[ 1, 0, 8, 9 ],
[ 6, 5, 5, 1 ]
]>, index := 12, jInvs := [162413858816/59049, 102400, 5674525/1024], containsmI := true, explained := false, EntInKerOfIsog := true >];
MaxCleanGenus0[<[ 2, 5 ], ["S3", "C3"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 2, 9, 7, 1 ],
[ 6, 3, 1, 7 ],
[ 4, 9, 9, 6 ]
]>, gens := [
[ 2, 9, 7, 1 ],
[ 6, 3, 1, 7 ],
[ 4, 9, 9, 6 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["S3", "C3"], H:=sub<SL(2,Integers(10)) | [
[ 8, 1, 7, 1 ],
[ 4, 7, 1, 7 ]
]>, label := ["GL2", "5S4"], NabG:=sub<GL(2,Integers(10)) | [
[ 7, 0, 0, 3 ],
[ 1, 0, 0, 9 ],
[ 5, 8, 8, 5 ]
]>, index := 30, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >];
MaxCleanGenus0[<[ 2, 7 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 11, 7, 1, 10 ],
[ 10, 7, 1, 10 ],
[ 3, 0, 5, 3 ],
[ 5, 7, 6, 11 ]
]>, gens := [
[ 11, 7, 1, 10 ],
[ 10, 7, 1, 10 ],
[ 3, 0, 5, 3 ],
[ 5, 7, 6, 11 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 12, 7, 1, 10 ],
[ 5, 0, 5, 3 ]
]>, label := ["GL2", "7B"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 0, 13 ],
[ 9, 0, 0, 1 ],
[ 1, 0, 6, 5 ],
[ 8, 7, 7, 1 ]
]>, index := 16, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 5, 7, 8, 5 ],
[ 10, 7, 5, 1 ],
[ 12, 7, 3, 12 ]
]>, gens := [
[ 5, 7, 8, 5 ],
[ 10, 7, 5, 1 ],
[ 12, 7, 3, 12 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 3, 7, 8, 5 ],
[ 8, 7, 5, 1 ]
]>, label := ["GL2", "7B"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 12, 1 ],
[ 1, 0, 0, 9 ],
[ 3, 0, 0, 1 ],
[ 8, 7, 7, 1 ]
]>, index := 16, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := true >];
MaxCleanGenus0[<[ 2, 7 ], ["C3", "C3"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 9, 7, 3, 10 ],
[ 5, 7, 9, 12 ]
]>, gens := [
[ 9, 7, 3, 10 ],
[ 5, 7, 9, 12 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C3", "C3"], H:=sub<SL(2,Integers(14)) | [
[ 5, 7, 3, 10 ],
[ 4, 7, 1, 9 ]
]>, label := ["2Cn", "7B"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 0, 13 ],
[ 1, 0, 10, 1 ],
[ 1, 0, 10, 3 ],
[ 13, 0, 0, 1 ]
]>, index := 48, jInvs := [ 42396561/16384, 3555482626044769/78364164096, 
37484312805940950481/13243543732224 ], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 5, 0, 8, 5 ],
[ 3, 0, 8, 11 ],
[ 9, 7, 7, 10 ]
]>, gens := [
[ 5, 0, 8, 5 ],
[ 3, 0, 8, 11 ],
[ 9, 7, 7, 10 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C3", "C3"], H:=sub<SL(2,Integers(14)) | [
[ 5, 7, 7, 10 ],
[ 13, 0, 8, 13 ]
]>, label := ["2Cn", "7B"], NabG:=sub<GL(2,Integers(14)) | [
[ 3, 0, 4, 11 ],
[ 1, 0, 0, 13 ],
[ 1, 0, 4, 13 ]
]>, index := 48, jInvs := [ 21609, 1168429123449, 783432480749179401/169 ], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 10, 7, 5, 11 ],
[ 2, 7, 3, 3 ],
[ 5, 7, 9, 12 ]
]>, gens := [
[ 10, 7, 5, 11 ],
[ 2, 7, 3, 3 ],
[ 5, 7, 9, 12 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C3", "C3"], H:=sub<SL(2,Integers(14)) | [
[ 12, 7, 3, 3 ],
[ 2, 7, 5, 11 ]
]>, label := ["2Cn", "7B"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 0, 13 ],
[ 1, 0, 10, 13 ],
[ 3, 0, 0, 1 ]
]>, index := 48, jInvs := [51181724570498001/4, 5841700537729/36, 
16997034248155273645704721/141745549885174404], containsmI := true, explained := false, EntInKerOfIsog := true >];
MaxCleanGenus0[<[ 2, 13 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(26)) | [
[ 8, 7, 5, 12 ],
[ 20, 25, 21, 14 ],
[ 5, 3, 4, 3 ]
]>, gens := [
[ 8, 7, 5, 12 ],
[ 20, 25, 21, 14 ],
[ 5, 3, 4, 3 ]
], level := 26, entlevel := [ 2, 13 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(26)) | [
[ 11, 21, 4, 3 ],
[ 2, 15, 5, 12 ],
[ 11, 11, 21, 14 ]
]>, label := ["GL2", "13B.4.1"], NabG:=sub<GL(2,Integers(26)) | [
[ 1, 13, 13, 14 ],
[ 17, 0, 22, 5 ],
[ 1, 2, 16, 5 ],
[ 1, 0, 14, 17 ],
[ 1, 0, 18, 3 ]
]>, index := 56, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(26)) | [
[ 15, 15, 20, 5 ],
[ 22, 23, 9, 24 ],
[ 7, 10, 25, 5 ],
[ 7, 1, 14, 1 ]
]>, gens := [
[ 15, 15, 20, 5 ],
[ 22, 23, 9, 24 ],
[ 7, 10, 25, 5 ],
[ 7, 1, 14, 1 ]
], level := 26, entlevel := [ 2, 13 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(26)) | [
[ 16, 5, 9, 24 ],
[ 9, 23, 20, 5 ]
]>, label := ["GL2", "13B.4.2"], NabG:=sub<GL(2,Integers(26)) | [
[ 1, 2, 18, 11 ],
[ 1, 13, 13, 14 ],
[ 15, 0, 24, 9 ],
[ 1, 0, 20, 9 ]
]>, index := 56, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(26)) | [
[ 0, 23, 21, 25 ],
[ 15, 15, 20, 5 ],
[ 25, 24, 19, 9 ],
[ 5, 16, 9, 5 ]
]>, gens := [
[ 0, 23, 21, 25 ],
[ 15, 15, 20, 5 ],
[ 25, 24, 19, 9 ],
[ 5, 16, 9, 5 ]
], level := 26, entlevel := [ 2, 13 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(26)) | [
[ 9, 23, 20, 5 ],
[ 16, 19, 21, 25 ]
]>, label := ["GL2", "13B.4.1"], NabG:=sub<GL(2,Integers(26)) | [
[ 1, 2, 18, 11 ],
[ 3, 0, 16, 25 ],
[ 1, 13, 13, 14 ],
[ 1, 0, 10, 5 ],
[ 1, 0, 6, 19 ]
]>, index := 56, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(26)) | [
[ 18, 7, 3, 16 ],
[ 22, 23, 9, 24 ],
[ 19, 14, 23, 1 ]
]>, gens := [
[ 18, 7, 3, 16 ],
[ 22, 23, 9, 24 ],
[ 19, 14, 23, 1 ]
], level := 26, entlevel := [ 2, 13 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(26)) | [
[ 16, 5, 9, 24 ],
[ 13, 22, 23, 1 ]
]>, label := ["GL2", "13B.4.2"], NabG:=sub<GL(2,Integers(26)) | [
[ 1, 2, 18, 11 ],
[ 14, 13, 13, 1 ],
[ 15, 0, 18, 17 ],
[ 1, 0, 18, 3 ]
]>, index := 56, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(26)) | [
[ 21, 6, 21, 17 ],
[ 5, 23, 22, 7 ],
[ 12, 15, 25, 17 ],
[ 11, 11, 12, 13 ]
]>, gens := [
[ 21, 6, 21, 17 ],
[ 5, 23, 22, 7 ],
[ 12, 15, 25, 17 ],
[ 11, 11, 12, 13 ]
], level := 26, entlevel := [ 2, 13 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(26)) | [
[ 13, 8, 21, 17 ],
[ 23, 25, 22, 7 ]
]>, label := ["GL2", "13B"], NabG:=sub<GL(2,Integers(26)) | [
[ 15, 0, 4, 1 ],
[ 1, 13, 13, 14 ],
[ 1, 0, 8, 25 ],
[ 1, 2, 16, 5 ],
[ 1, 0, 14, 17 ]
]>, index := 28, jInvs := [2045023375454208, 201536816469219189/67108864, 
34324048190584459264/2541865828329], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(26)) | [
[ 5, 18, 12, 9 ],
[ 17, 20, 5, 21 ],
[ 14, 21, 15, 0 ]
]>, gens := [
[ 5, 18, 12, 9 ],
[ 17, 20, 5, 21 ],
[ 14, 21, 15, 0 ]
], level := 26, entlevel := [ 2, 13 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(26)) | [
[ 15, 22, 12, 9 ],
[ 9, 22, 5, 21 ],
[ 22, 19, 15, 0 ]
]>, label := ["GL2", "13B"], NabG:=sub<GL(2,Integers(26)) | [
[ 1, 2, 18, 11 ],
[ 1, 13, 13, 14 ],
[ 17, 0, 20, 25 ],
[ 1, 0, 16, 23 ],
[ 1, 0, 6, 19 ]
]>, index := 28, jInvs := [2101248, 65397031749/4, 338659088871424/9], containsmI := true, explained := false, EntInKerOfIsog := true >];
MaxCleanGenus0[<[ 3, 5 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 10, 7, 8, 4 ],
[ 10, 8, 4, 4 ],
[ 11, 2, 8, 10 ],
[ 13, 5, 1, 7 ],
[ 1, 11, 4, 13 ]
]>, gens := [
[ 10, 7, 8, 4 ],
[ 10, 8, 4, 4 ],
[ 11, 2, 8, 10 ],
[ 13, 5, 1, 7 ],
[ 1, 11, 4, 13 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 11, 11, 8, 4 ],
[ 11, 7, 4, 4 ]
]>, label := ["3Nn", "5B"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 0, 12, 4 ],
[ 11, 0, 0, 1 ],
[ 1, 0, 9, 7 ],
[ 13, 6, 6, 13 ],
[ 4, 0, 0, 4 ],
[ 1, 0, 0, 11 ],
[ 6, 10, 5, 6 ]
]>, index := 36, jInvs := [-1680914269/32768, 38477541376, 3307949/8 ], containsmI := true, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 1, 2, 13, 10 ],
[ 14, 5, 7, 2 ],
[ 11, 1, 14, 8 ],
[ 11, 11, 13, 14 ],
[ 10, 8, 2, 11 ]
]>, gens := [
[ 1, 2, 13, 10 ],
[ 14, 5, 7, 2 ],
[ 11, 1, 14, 8 ],
[ 11, 11, 13, 14 ],
[ 10, 8, 2, 11 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 7, 5, 14, 8 ],
[ 5, 13, 13, 10 ],
[ 1, 1, 13, 14 ]
]>, label := ["3Nn", "5B"], NabG:=sub<GL(2,Integers(15)) | [
[ 7, 0, 6, 1 ],
[ 1, 0, 12, 4 ],
[ 11, 0, 0, 1 ],
[ 6, 10, 10, 6 ],
[ 13, 3, 12, 4 ],
[ 1, 0, 0, 11 ]
]>, index := 36, jInvs := [1331/8, 4096, 139717566269/32768], containsmI := true, explained := false, EntInKerOfIsog := false >];
EntaglementGroup := recformat<G: GrpMat, gens: SeqEnum, level: RngIntElt, H: GrpMat, entlevel: SeqEnum, enttype: SeqEnum, label: SeqEnum, NabG: GrpMat, index: RngIntElt, jmap: FldFunRatUElt, jInvs: SeqEnum, containsmI: BoolElt, explained: BoolElt, EntInKerOfIsog: BoolElt, EM: CrvEll, jEM: FldFunRatMElt>;

MaxCleanGenus1r0 := AssociativeArray();

MaxCleanGenus1r0[<[ 2, 5 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 3, 2, 3, 3 ],
[ 9, 1, 1, 6 ],
[ 4, 9, 9, 1 ]
]>, gens := [
[ 3, 2, 3, 3 ],
[ 9, 1, 1, 6 ],
[ 4, 9, 9, 1 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 5, 1, 9, 0 ],
[ 5, 3, 8, 5 ]
]>, label := ["GL2", "5Ns"], NabG:=sub<GL(2,Integers(10)) | [
[ 7, 0, 0, 7 ],
[ 7, 2, 2, 3 ],
[ 1, 4, 4, 9 ],
[ 6, 5, 5, 1 ]
]>, index := 30, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 3, 5, 5, 8 ],
[ 4, 1, 9, 9 ],
[ 4, 9, 9, 6 ]
]>, gens := [
[ 3, 5, 5, 8 ],
[ 4, 1, 9, 9 ],
[ 4, 9, 9, 6 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 0, 7, 7, 0 ],
[ 2, 5, 5, 8 ],
[ 4, 5, 5, 9 ]
]>, label := ["GL2", "5Ns"], NabG:=sub<GL(2,Integers(10)) | [
[ 7, 0, 0, 7 ],
[ 7, 2, 8, 7 ],
[ 6, 5, 5, 1 ]
]>, index := 30, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >];
MaxCleanGenus1r0[<[ 2, 5 ], ["S3", "S3"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 7, 2, 9, 3 ],
[ 2, 3, 3, 1 ]
]>, gens := [
[ 7, 2, 9, 3 ],
[ 2, 3, 3, 1 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["S3", "S3"], H:=sub<SL(2,Integers(10)) | [
[ 9, 7, 7, 0 ],
[ 3, 9, 0, 7 ]
]>, label := ["GL2", "5Nn"], NabG:=sub<GL(2,Integers(10)) | [
[ 7, 0, 0, 7 ],
[ 7, 2, 2, 3 ]
]>, index := 60, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >];
MaxCleanGenus1r0[<[ 2, 7 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 9, 0, 7, 13 ],
[ 5, 0, 9, 5 ]
]>, gens := [
[ 9, 0, 7, 13 ],
[ 5, 0, 9, 5 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 3, 0, 9, 5 ],
[ 13, 0, 7, 13 ],
[ 11, 0, 4, 9 ]
]>, label := ["2B", "7B"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 12, 9 ],
[ 1, 0, 2, 9 ],
[ 3, 0, 0, 1 ]
]>, index := 48, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 1, 0, 0, 5 ],
[ 3, 0, 11, 3 ]
]>, gens := [
[ 1, 0, 0, 5 ],
[ 3, 0, 11, 3 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 5, 0, 11, 3 ],
[ 9, 0, 0, 11 ]
]>, label := ["2B", "7B"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 0, 13 ],
[ 9, 0, 0, 1 ],
[ 1, 0, 6, 11 ]
]>, index := 48, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 13, 5, 9, 8 ],
[ 11, 12, 9, 3 ],
[ 2, 1, 13, 12 ],
[ 0, 5, 9, 0 ]
]>, gens := [
[ 13, 5, 9, 8 ],
[ 11, 12, 9, 3 ],
[ 2, 1, 13, 12 ],
[ 0, 5, 9, 0 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 10, 1, 1, 3 ],
[ 1, 3, 4, 13 ],
[ 8, 11, 3, 6 ]
]>, label := ["GL2", "7Ns"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 0, 13 ],
[ 3, 0, 0, 11 ],
[ 1, 2, 12, 13 ],
[ 8, 7, 7, 1 ]
]>, index := 56, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 6, 9, 9, 12 ],
[ 6, 13, 5, 8 ],
[ 1, 8, 1, 11 ]
]>, gens := [
[ 6, 9, 9, 12 ],
[ 6, 13, 5, 8 ],
[ 1, 8, 1, 11 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 11, 2, 2, 3 ],
[ 3, 4, 4, 1 ],
[ 0, 13, 1, 0 ],
[ 1, 7, 7, 8 ]
]>, label := ["GL2", "7Nn"], NabG:=sub<GL(2,Integers(14)) | [
[ 3, 2, 0, 11 ],
[ 3, 0, 2, 11 ],
[ 1, 0, 10, 13 ],
[ 1, 7, 7, 8 ]
]>, index := 42, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >];
MaxCleanGenus1r0[<[ 3, 5 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 11, 13, 12, 2 ],
[ 14, 5, 6, 8 ],
[ 8, 6, 9, 10 ]
]>, gens := [
[ 11, 13, 12, 2 ],
[ 14, 5, 6, 8 ],
[ 8, 6, 9, 10 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 11, 13, 12, 2 ],
[ 1, 10, 0, 1 ]
]>, label := ["3B", "5B.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 5, 0, 1 ],
[ 1, 0, 12, 4 ],
[ 1, 0, 9, 7 ],
[ 13, 3, 12, 4 ],
[ 1, 0, 0, 11 ]
]>, index := 96, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 10, 4, 3, 1 ],
[ 4, 12, 3, 8 ],
[ 11, 8, 12, 2 ]
]>, gens := [
[ 10, 4, 3, 1 ],
[ 4, 12, 3, 8 ],
[ 11, 8, 12, 2 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 1, 5, 0, 1 ],
[ 11, 8, 12, 2 ]
]>, label := ["3B", "5B.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 0, 12, 4 ],
[ 13, 6, 0, 4 ],
[ 4, 0, 12, 7 ],
[ 1, 10, 0, 11 ],
[ 1, 0, 0, 11 ]
]>, index := 96, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 1, 3, 2, 2 ],
[ 11, 3, 7, 2 ],
[ 14, 3, 8, 14 ]
]>, gens := [
[ 1, 3, 2, 2 ],
[ 11, 3, 7, 2 ],
[ 14, 3, 8, 14 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 11, 3, 2, 2 ]
]>, label := ["3B", "5B.4.2"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 0, 10, 1 ],
[ 11, 0, 0, 1 ],
[ 1, 12, 12, 1 ],
[ 7, 0, 3, 4 ]
]>, index := 96, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 4, 3, 13, 4 ],
[ 1, 3, 2, 2 ],
[ 11, 3, 7, 2 ]
]>, gens := [
[ 4, 3, 13, 4 ],
[ 1, 3, 2, 2 ],
[ 11, 3, 7, 2 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 11, 3, 2, 2 ]
]>, label := ["3B", "5B.4.2"], NabG:=sub<GL(2,Integers(15)) | [
[ 7, 0, 6, 1 ],
[ 11, 0, 0, 1 ],
[ 1, 0, 5, 1 ],
[ 1, 3, 0, 4 ]
]>, index := 96, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 11, 13, 12, 2 ],
[ 2, 9, 6, 10 ],
[ 8, 11, 6, 8 ]
]>, gens := [
[ 11, 13, 12, 2 ],
[ 2, 9, 6, 10 ],
[ 8, 11, 6, 8 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 1, 5, 0, 1 ],
[ 11, 13, 12, 2 ]
]>, label := ["3B", "5B.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 0, 12, 4 ],
[ 7, 9, 6, 10 ],
[ 11, 0, 0, 1 ],
[ 1, 0, 9, 7 ],
[ 11, 10, 0, 1 ]
]>, index := 96, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 14, 2, 12, 14 ],
[ 5, 11, 9, 7 ],
[ 5, 4, 6, 8 ]
]>, gens := [
[ 14, 2, 12, 14 ],
[ 5, 11, 9, 7 ],
[ 5, 4, 6, 8 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 1, 5, 0, 1 ],
[ 10, 1, 9, 7 ],
[ 5, 4, 6, 8 ]
]>, label := ["3B", "5B.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 5, 0, 1 ],
[ 1, 0, 12, 4 ],
[ 7, 9, 6, 10 ],
[ 11, 0, 0, 1 ],
[ 4, 0, 12, 7 ]
]>, index := 96, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 11, 3, 7, 7 ],
[ 8, 6, 4, 5 ],
[ 14, 3, 8, 14 ]
]>, gens := [
[ 11, 3, 7, 7 ],
[ 8, 6, 4, 5 ],
[ 14, 3, 8, 14 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 8, 6, 4, 5 ]
]>, label := ["3B", "5B.4.2"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 0, 5, 11 ],
[ 4, 3, 0, 7 ],
[ 7, 0, 3, 4 ],
[ 1, 0, 0, 11 ]
]>, index := 96, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 4, 3, 13, 4 ],
[ 11, 3, 7, 7 ],
[ 8, 6, 4, 5 ]
]>, gens := [
[ 4, 3, 13, 4 ],
[ 11, 3, 7, 7 ],
[ 8, 6, 4, 5 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 8, 6, 4, 5 ]
]>, label := ["3B", "5B.4.2"], NabG:=sub<GL(2,Integers(15)) | [
[ 7, 0, 6, 1 ],
[ 10, 6, 9, 7 ],
[ 1, 0, 5, 11 ],
[ 1, 0, 10, 11 ]
]>, index := 96, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 9, 13, 7, 0 ],
[ 12, 11, 4, 9 ],
[ 9, 13, 8, 9 ]
]>, gens := [
[ 9, 13, 7, 0 ],
[ 12, 11, 4, 9 ],
[ 9, 13, 8, 9 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 0, 2, 7, 0 ],
[ 6, 2, 4, 9 ]
]>, label := ["3Ns", "5B"], NabG:=sub<GL(2,Integers(15)) | [
[ 11, 0, 0, 1 ],
[ 1, 0, 3, 13 ],
[ 4, 0, 6, 13 ],
[ 10, 6, 12, 4 ],
[ 1, 0, 0, 11 ]
]>, index := 72, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 9, 13, 7, 0 ],
[ 14, 3, 3, 14 ],
[ 0, 13, 2, 6 ]
]>, gens := [
[ 9, 13, 7, 0 ],
[ 14, 3, 3, 14 ],
[ 0, 13, 2, 6 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 7, 12, 3, 1 ],
[ 9, 4, 2, 6 ],
[ 0, 2, 7, 0 ]
]>, label := ["3Ns", "5B"], NabG:=sub<GL(2,Integers(15)) | [
[ 7, 0, 6, 1 ],
[ 1, 0, 12, 4 ],
[ 11, 0, 0, 1 ],
[ 4, 12, 0, 1 ],
[ 1, 0, 0, 11 ]
]>, index := 72, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 4, 3, 13, 4 ],
[ 5, 3, 2, 11 ],
[ 14, 3, 2, 10 ]
]>, gens := [
[ 4, 3, 13, 4 ],
[ 5, 3, 2, 11 ],
[ 14, 3, 2, 10 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 14, 9, 2, 11 ],
[ 13, 6, 14, 10 ]
]>, label := ["3B", "5B"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 0, 10, 1 ],
[ 1, 0, 12, 4 ],
[ 1, 12, 0, 13 ],
[ 7, 0, 3, 4 ],
[ 1, 0, 0, 11 ]
]>, index := 48, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 8, 9, 1, 11 ],
[ 11, 12, 13, 10 ],
[ 14, 3, 8, 14 ]
]>, gens := [
[ 8, 9, 1, 11 ],
[ 11, 12, 13, 10 ],
[ 14, 3, 8, 14 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 11, 6, 8, 14 ],
[ 14, 3, 1, 11 ]
]>, label := ["3B", "5B"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 0, 5, 11 ],
[ 1, 0, 9, 7 ],
[ 1, 0, 5, 1 ],
[ 4, 0, 3, 1 ],
[ 13, 3, 6, 10 ]
]>, index := 48, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 5, 12, 8, 14 ],
[ 1, 6, 4, 8 ],
[ 14, 3, 8, 14 ]
]>, gens := [
[ 5, 12, 8, 14 ],
[ 1, 6, 4, 8 ],
[ 14, 3, 8, 14 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 2, 0, 4, 8 ],
[ 11, 6, 8, 14 ]
]>, label := ["3B", "5B"], NabG:=sub<GL(2,Integers(15)) | [
[ 11, 0, 0, 1 ],
[ 1, 0, 3, 13 ],
[ 13, 6, 6, 13 ],
[ 1, 0, 5, 1 ],
[ 4, 0, 3, 1 ]
]>, index := 48, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 4, 3, 13, 4 ],
[ 5, 12, 13, 14 ],
[ 1, 6, 9, 8 ]
]>, gens := [
[ 4, 3, 13, 4 ],
[ 5, 12, 13, 14 ],
[ 1, 6, 9, 8 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(15)) | [
[ 11, 6, 13, 14 ],
[ 2, 0, 9, 8 ]
]>, label := ["3B", "5B"], NabG:=sub<GL(2,Integers(15)) | [
[ 7, 0, 6, 1 ],
[ 1, 0, 12, 4 ],
[ 11, 0, 0, 1 ],
[ 1, 0, 5, 1 ],
[ 1, 12, 0, 13 ]
]>, index := 48, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := true >];
MaxCleanGenus1r0[<[ 3, 7 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 2, 3, 13, 5 ],
[ 10, 15, 13, 8 ],
[ 14, 9, 19, 17 ],
[ 8, 3, 18, 2 ],
[ 7, 6, 11, 5 ]
]>, gens := [
[ 2, 3, 13, 5 ],
[ 10, 15, 13, 8 ],
[ 14, 9, 19, 17 ],
[ 8, 3, 18, 2 ],
[ 7, 6, 11, 5 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(21)) | [
[ 14, 15, 13, 5 ],
[ 5, 0, 19, 17 ]
]>, label := ["3B", "7B"], NabG:=sub<GL(2,Integers(21)) | [
[ 10, 15, 0, 16 ],
[ 1, 0, 3, 4 ],
[ 16, 0, 6, 1 ],
[ 1, 0, 18, 19 ],
[ 1, 0, 14, 1 ],
[ 1, 0, 14, 8 ]
]>, index := 64, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 4, 6, 5, 10 ],
[ 11, 6, 8, 13 ],
[ 8, 18, 19, 2 ],
[ 20, 3, 18, 14 ],
[ 20, 3, 11, 14 ]
]>, gens := [
[ 4, 6, 5, 10 ],
[ 11, 6, 8, 13 ],
[ 8, 18, 19, 2 ],
[ 20, 3, 18, 14 ],
[ 20, 3, 11, 14 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(21)) | [
[ 8, 12, 18, 14 ],
[ 8, 12, 11, 14 ],
[ 16, 12, 7, 4 ]
]>, label := ["3B", "7B"], NabG:=sub<GL(2,Integers(21)) | [
[ 1, 9, 15, 7 ],
[ 1, 0, 3, 4 ],
[ 10, 0, 12, 1 ],
[ 1, 0, 14, 8 ],
[ 1, 0, 0, 8 ]
]>, index := 64, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 13, 15, 6, 11 ],
[ 14, 18, 17, 20 ],
[ 19, 9, 18, 7 ],
[ 8, 9, 19, 11 ]
]>, gens := [
[ 13, 15, 6, 11 ],
[ 14, 18, 17, 20 ],
[ 19, 9, 18, 7 ],
[ 8, 9, 19, 11 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(21)) | [
[ 2, 6, 17, 20 ],
[ 11, 6, 6, 11 ]
]>, label := ["3B", "7B"], NabG:=sub<GL(2,Integers(21)) | [
[ 19, 15, 18, 1 ],
[ 1, 0, 3, 4 ],
[ 8, 0, 0, 1 ],
[ 10, 0, 6, 16 ],
[ 1, 0, 7, 1 ]
]>, index := 64, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 5, 9, 12, 8 ],
[ 11, 0, 13, 10 ],
[ 1, 3, 4, 2 ],
[ 14, 12, 16, 4 ],
[ 14, 18, 20, 2 ]
]>, gens := [
[ 5, 9, 12, 8 ],
[ 11, 0, 13, 10 ],
[ 1, 3, 4, 2 ],
[ 14, 12, 16, 4 ],
[ 14, 18, 20, 2 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(21)) | [
[ 14, 18, 12, 8 ],
[ 10, 6, 13, 10 ]
]>, label := ["3B", "7B"], NabG:=sub<GL(2,Integers(21)) | [
[ 1, 0, 12, 13 ],
[ 16, 0, 18, 13 ],
[ 1, 0, 14, 1 ],
[ 4, 3, 6, 7 ],
[ 1, 0, 18, 19 ],
[ 8, 0, 0, 1 ]
]>, index := 64, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := true >];
EntaglementGroup := recformat<G: GrpMat, gens: SeqEnum, level: RngIntElt, H: GrpMat, entlevel: SeqEnum, enttype: SeqEnum, label: SeqEnum, NabG: GrpMat, index: RngIntElt, jmap: FldFunRatUElt, jInvs: SeqEnum, containsmI: BoolElt, explained: BoolElt, EntInKerOfIsog: BoolElt, EM: CrvEll, jEM: FldFunRatMElt>;

MaxCleanGenus1rp := AssociativeArray();

MaxCleanGenus1rp[<[ 2, 7 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 13, 12, 9, 1 ],
[ 7, 11, 10, 7 ],
[ 9, 8, 13, 5 ],
[ 0, 5, 9, 0 ]
]>, gens := [
[ 13, 12, 9, 1 ],
[ 7, 11, 10, 7 ],
[ 9, 8, 13, 5 ],
[ 0, 5, 9, 0 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 6, 11, 3, 8 ],
[ 1, 7, 7, 8 ],
[ 13, 10, 11, 1 ]
]>, label := ["GL2", "7Ns"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 2, 2, 1 ],
[ 1, 7, 7, 8 ],
[ 3, 0, 0, 3 ],
[ 3, 2, 2, 3 ]
]>, index := 56, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 3, 1, 8, 11 ],
[ 9, 11, 11, 0 ],
[ 7, 2, 2, 13 ]
]>, gens := [
[ 3, 1, 8, 11 ],
[ 9, 11, 11, 0 ],
[ 7, 2, 2, 13 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 9, 3, 10, 5 ],
[ 13, 11, 11, 4 ]
]>, label := ["GL2", "7Nn"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 2, 2, 7 ],
[ 3, 0, 0, 3 ],
[ 8, 7, 7, 1 ]
]>, index := 42, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >];
MaxCleanGenus0GalSort := AssociativeArray();for k in Sort([k : k in Keys(MaxCleanGenus0)]) do	if not k in Keys(MaxCleanGenus0GalSort) then		MaxCleanGenus0GalSort[k] := AssociativeArray();	end if;	for r in MaxCleanGenus0[k] do		if r`label in Keys(MaxCleanGenus0GalSort[k]) then			Append(~MaxCleanGenus0GalSort[k][r`label],r);   	else    		MaxCleanGenus0GalSort[k][r`label]:=[r];	    end if;	end for;end for;
