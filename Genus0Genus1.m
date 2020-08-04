EntaglementGroup := recformat<G: GrpMat, gens: SeqEnum, level: RngIntElt, H: GrpMat, entlevel: SeqEnum, enttype: SeqEnum, label: SeqEnum, NabG: GrpMat, index: RngIntElt, jmap: FldFunRatUElt, jInvs: SeqEnum, containsmI: BoolElt, explained: BoolElt, EntInKerOfIsog: BoolElt, EM: CrvEll, jEM: FldFunRatMElt>;

Genus0 := AssociativeArray();

Genus0[<[ 2, 3 ], ["C2", "C1"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 1, 2, 0, 1 ],
[ 1, 1, 0, 5 ]
]>, gens := [
[ 1, 2, 0, 1 ],
[ 1, 1, 0, 5 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(6)) | [
[ 1, 2, 0, 1 ]
]>, label := ["2B", "3B"], NabG:=sub<GL(2,Integers(6)) | [
[ 1, 2, 0, 1 ]
]>, index := 48, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 1, 2, 0, 1 ],
[ 5, 5, 0, 1 ]
]>, gens := [
[ 1, 2, 0, 1 ],
[ 5, 5, 0, 1 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(6)) | [
[ 1, 2, 0, 1 ]
]>, label := ["2B", "3B"], NabG:=sub<GL(2,Integers(6)) | [
[ 1, 2, 0, 1 ]
]>, index := 48, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 5, 5, 0, 1 ],
[ 5, 4, 0, 5 ]
]>, gens := [
[ 5, 5, 0, 1 ],
[ 5, 4, 0, 5 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(6)) | [
[ 1, 2, 0, 1 ],
[ 5, 4, 0, 5 ]
]>, label := ["2B", "3B"], NabG:=sub<GL(2,Integers(6)) | [
[ 1, 2, 0, 1 ],
[ 5, 0, 0, 5 ]
]>, index := 24, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 1, 3, 3, 4 ],
[ 4, 5, 3, 1 ],
[ 1, 1, 0, 5 ]
]>, gens := [
[ 1, 3, 3, 4 ],
[ 4, 5, 3, 1 ],
[ 1, 1, 0, 5 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(6)) | [
[ 1, 3, 3, 4 ],
[ 1, 4, 0, 1 ]
]>, label := ["GL2", "3B"], NabG:=sub<GL(2,Integers(6)) | [
[ 1, 2, 0, 1 ],
[ 4, 3, 3, 1 ]
]>, index := 16, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 4, 1, 3, 1 ],
[ 4, 3, 3, 1 ],
[ 2, 5, 3, 4 ]
]>, gens := [
[ 4, 1, 3, 1 ],
[ 4, 3, 3, 1 ],
[ 2, 5, 3, 4 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(6)) | [
[ 1, 2, 0, 1 ],
[ 4, 1, 3, 1 ]
]>, label := ["GL2", "3B"], NabG:=sub<GL(2,Integers(6)) | [
[ 1, 2, 0, 1 ],
[ 4, 3, 3, 1 ]
]>, index := 16, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 4, 1, 3, 2 ],
[ 5, 2, 0, 5 ],
[ 2, 3, 3, 5 ]
]>, gens := [
[ 4, 1, 3, 2 ],
[ 5, 2, 0, 5 ],
[ 2, 3, 3, 5 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(6)) | [
[ 1, 2, 0, 1 ],
[ 5, 5, 3, 2 ]
]>, label := ["GL2", "3B"], NabG:=sub<GL(2,Integers(6)) | [
[ 1, 2, 0, 1 ],
[ 1, 3, 3, 4 ],
[ 5, 0, 0, 5 ]
]>, index := 8, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 5, 5, 2, 3 ],
[ 5, 5, 4, 5 ]
]>, gens := [
[ 5, 5, 2, 3 ],
[ 5, 5, 4, 5 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(6)) | [
[ 3, 4, 2, 3 ],
[ 1, 4, 0, 1 ]
]>, label := ["2B", "GL3"], NabG:=sub<GL(2,Integers(6)) | [
[ 1, 2, 0, 1 ],
[ 5, 0, 0, 5 ],
[ 1, 0, 4, 1 ]
]>, index := 6, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 5, 1, 4, 3 ],
[ 2, 5, 5, 1 ],
[ 2, 1, 1, 1 ],
[ 2, 5, 5, 0 ]
]>, gens := [
[ 5, 1, 4, 3 ],
[ 2, 5, 5, 1 ],
[ 2, 1, 1, 1 ],
[ 2, 5, 5, 0 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(6)) | [
[ 2, 5, 5, 1 ],
[ 5, 2, 4, 3 ],
[ 1, 4, 0, 1 ]
]>, label := ["GL2", "GL3"], NabG:=sub<GL(2,Integers(6)) | [
[ 1, 2, 0, 1 ],
[ 5, 0, 0, 5 ],
[ 4, 3, 3, 1 ],
[ 1, 0, 4, 1 ]
]>, index := 2, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >];
Genus0[<[ 2, 3 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 5, 3, 0, 5 ],
[ 5, 0, 0, 1 ]
]>, gens := [
[ 5, 3, 0, 5 ],
[ 5, 0, 0, 1 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(6)) | [
[ 5, 3, 0, 5 ]
]>, label := ["2B", "3Cs"], NabG:=sub<GL(2,Integers(6)) | [
[ 5, 0, 0, 1 ]
]>, index := 72, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 3, 5, 4, 3 ],
[ 3, 5, 2, 3 ]
]>, gens := [
[ 3, 5, 4, 3 ],
[ 3, 5, 2, 3 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(6)) | [
[ 3, 5, 4, 3 ]
]>, label := ["2B", "3Ns"], NabG:=sub<GL(2,Integers(6)) | [
[ 1, 0, 0, 5 ],
[ 5, 0, 0, 1 ]
]>, index := 36, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 4, 3, 3, 5 ],
[ 5, 3, 0, 5 ]
]>, gens := [
[ 4, 3, 3, 5 ],
[ 5, 3, 0, 5 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(6)) | [
[ 5, 0, 3, 5 ],
[ 5, 3, 0, 5 ]
]>, label := ["GL2", "3Cs"], NabG:=sub<GL(2,Integers(6)) | [
[ 1, 0, 0, 5 ],
[ 4, 3, 3, 1 ]
]>, index := 24, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 1, 0, 0, 5 ],
[ 5, 1, 0, 5 ]
]>, gens := [
[ 1, 0, 0, 5 ],
[ 5, 1, 0, 5 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(6)) | [
[ 1, 2, 0, 1 ],
[ 5, 1, 0, 5 ]
]>, label := ["2B", "3B"], NabG:=sub<GL(2,Integers(6)) | [
[ 1, 0, 0, 5 ],
[ 1, 2, 0, 1 ]
]>, index := 24, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 5, 5, 0, 5 ],
[ 5, 0, 0, 1 ]
]>, gens := [
[ 5, 5, 0, 5 ],
[ 5, 0, 0, 1 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(6)) | [
[ 5, 5, 0, 5 ],
[ 1, 4, 0, 1 ]
]>, label := ["2B", "3B"], NabG:=sub<GL(2,Integers(6)) | [
[ 1, 2, 0, 1 ],
[ 5, 0, 0, 1 ]
]>, index := 24, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 5, 1, 4, 1 ],
[ 1, 1, 2, 1 ]
]>, gens := [
[ 5, 1, 4, 1 ],
[ 1, 1, 2, 1 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(6)) | [
[ 5, 1, 4, 1 ],
[ 5, 5, 2, 1 ]
]>, label := ["2B", "3Nn"], NabG:=sub<GL(2,Integers(6)) | [
[ 1, 0, 0, 5 ],
[ 3, 2, 4, 3 ],
[ 5, 0, 0, 1 ]
]>, index := 18, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 5, 1, 4, 1 ],
[ 5, 4, 2, 5 ]
]>, gens := [
[ 5, 1, 4, 1 ],
[ 5, 4, 2, 5 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(6)) | [
[ 5, 1, 4, 1 ],
[ 3, 2, 4, 3 ]
]>, label := ["2B", "3Nn"], NabG:=sub<GL(2,Integers(6)) | [
[ 1, 2, 4, 1 ],
[ 5, 0, 0, 5 ]
]>, index := 18, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
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
Genus0[<[ 2, 3 ], ["S3", "C3"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 2, 5, 1, 3 ],
[ 1, 1, 0, 5 ]
]>, gens := [
[ 2, 5, 1, 3 ],
[ 1, 1, 0, 5 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["S3", "C3"], H:=sub<SL(2,Integers(6)) | [
[ 2, 5, 1, 3 ]
]>, label := ["GL2", "3B"], NabG:=sub<GL(2,Integers(6)) | []>, index := 48, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 4, 3, 5, 2 ],
[ 2, 5, 1, 3 ]
]>, gens := [
[ 4, 3, 5, 2 ],
[ 2, 5, 1, 3 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["S3", "C3"], H:=sub<SL(2,Integers(6)) | [
[ 3, 1, 5, 2 ]
]>, label := ["GL2", "3B"], NabG:=sub<GL(2,Integers(6)) | []>, index := 48, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 4, 1, 5, 3 ],
[ 2, 3, 1, 4 ]
]>, gens := [
[ 4, 1, 5, 3 ],
[ 2, 3, 1, 4 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["S3", "C3"], H:=sub<SL(2,Integers(6)) | [
[ 4, 1, 5, 3 ]
]>, label := ["GL2", "3B"], NabG:=sub<GL(2,Integers(6)) | [
[ 5, 0, 0, 5 ]
]>, index := 24, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
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
Genus0[<[ 2, 5 ], ["C2", "C1"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 9, 7, 1, 4 ],
[ 3, 1, 1, 0 ],
[ 5, 3, 7, 8 ],
[ 0, 7, 9, 0 ]
]>, gens := [
[ 9, 7, 1, 4 ],
[ 3, 1, 1, 0 ],
[ 5, 3, 7, 8 ],
[ 0, 7, 9, 0 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(10)) | [
[ 3, 9, 7, 8 ],
[ 1, 9, 1, 0 ],
[ 5, 9, 1, 4 ]
]>, label := ["GL2", "5S4"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 5, 5, 6 ],
[ 7, 0, 6, 3 ],
[ 1, 2, 6, 1 ],
[ 1, 0, 8, 9 ]
]>, index := 10, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 5, 2, 1, 3 ],
[ 5, 2, 9, 1 ]
]>, gens := [
[ 5, 2, 1, 3 ],
[ 5, 2, 9, 1 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(10)) | [
[ 5, 8, 8, 1 ],
[ 1, 8, 0, 1 ]
]>, label := ["2B", "GL5"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 2, 0, 1 ],
[ 7, 0, 0, 3 ],
[ 1, 0, 0, 9 ],
[ 1, 0, 8, 9 ]
]>, index := 6, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 8, 5, 3, 3 ],
[ 1, 6, 9, 7 ],
[ 8, 3, 5, 3 ]
]>, gens := [
[ 8, 5, 3, 3 ],
[ 1, 6, 9, 7 ],
[ 8, 3, 5, 3 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(10)) | [
[ 8, 1, 3, 3 ],
[ 1, 8, 0, 1 ]
]>, label := ["GL2", "GL5"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 0, 4, 9 ],
[ 1, 2, 0, 1 ],
[ 7, 0, 2, 3 ],
[ 1, 0, 0, 9 ],
[ 6, 5, 5, 1 ]
]>, index := 2, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >];
Genus0[<[ 2, 5 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 5, 3, 9, 4 ],
[ 7, 1, 8, 5 ]
]>, gens := [
[ 5, 3, 9, 4 ],
[ 7, 1, 8, 5 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 9, 0, 5, 9 ],
[ 4, 5, 5, 4 ]
]>, label := ["GL2", "5Cs.4.1"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 5, 5, 6 ],
[ 7, 2, 6, 3 ],
[ 3, 4, 2, 5 ]
]>, index := 120, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 5, 7, 1, 6 ],
[ 3, 9, 2, 5 ]
]>, gens := [
[ 5, 7, 1, 6 ],
[ 3, 9, 2, 5 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 9, 0, 5, 9 ],
[ 4, 5, 5, 4 ]
]>, label := ["GL2", "5Cs.4.1"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 5, 5, 6 ],
[ 7, 2, 6, 3 ],
[ 7, 6, 8, 5 ]
]>, index := 120, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 9, 0, 5, 7 ],
[ 9, 0, 3, 9 ]
]>, gens := [
[ 9, 0, 5, 7 ],
[ 9, 0, 3, 9 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 9, 0, 3, 9 ]
]>, label := ["2B", "5B.4.2"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 0, 6, 3 ],
[ 1, 0, 0, 9 ]
]>, index := 72, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 3, 0, 8, 1 ],
[ 9, 0, 7, 9 ]
]>, gens := [
[ 3, 0, 8, 1 ],
[ 9, 0, 7, 9 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 1, 0, 8, 1 ],
[ 9, 0, 7, 9 ]
]>, label := ["2B", "5B.4.1"], NabG:=sub<GL(2,Integers(10)) | [
[ 7, 0, 0, 1 ],
[ 1, 0, 8, 1 ]
]>, index := 72, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 9, 0, 9, 9 ],
[ 9, 0, 4, 3 ]
]>, gens := [
[ 9, 0, 9, 9 ],
[ 9, 0, 4, 3 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 9, 0, 9, 9 ]
]>, label := ["2B", "5B.4.2"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 0, 0, 9 ],
[ 9, 0, 6, 7 ],
[ 1, 0, 4, 1 ]
]>, index := 72, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 7, 0, 2, 9 ],
[ 9, 0, 7, 9 ]
]>, gens := [
[ 7, 0, 2, 9 ],
[ 9, 0, 7, 9 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 9, 0, 7, 9 ]
]>, label := ["2B", "5B.4.1"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 0, 2, 1 ],
[ 7, 0, 0, 9 ]
]>, index := 72, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 3, 0, 1, 3 ],
[ 9, 0, 4, 3 ]
]>, gens := [
[ 3, 0, 1, 3 ],
[ 9, 0, 4, 3 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 9, 0, 6, 9 ],
[ 7, 0, 1, 3 ]
]>, label := ["2B", "5B"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 0, 4, 3 ],
[ 9, 0, 0, 1 ],
[ 1, 0, 0, 9 ]
]>, index := 36, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 9, 0, 9, 3 ],
[ 3, 0, 3, 3 ]
]>, gens := [
[ 9, 0, 9, 3 ],
[ 3, 0, 3, 3 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(10)) | [
[ 7, 0, 9, 3 ],
[ 7, 0, 3, 3 ]
]>, label := ["2B", "5B"], NabG:=sub<GL(2,Integers(10)) | [
[ 7, 0, 0, 1 ],
[ 1, 0, 8, 1 ],
[ 1, 0, 0, 9 ]
]>, index := 36, jInvs := [], containsmI := true, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
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
Genus0[<[ 2, 5 ], ["S3", "C3"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
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
Genus0[<[ 2, 7 ], ["C2", "C1"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 1, 9, 8, 7 ],
[ 8, 9, 3, 3 ],
[ 7, 4, 6, 11 ]
]>, gens := [
[ 1, 9, 8, 7 ],
[ 8, 9, 3, 3 ],
[ 7, 4, 6, 11 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(14)) | [
[ 13, 6, 8, 7 ],
[ 10, 5, 3, 3 ]
]>, label := ["GL2", "7B"], NabG:=sub<GL(2,Integers(14)) | [
[ 9, 0, 6, 11 ],
[ 1, 2, 10, 3 ],
[ 1, 0, 10, 9 ],
[ 1, 7, 7, 8 ]
]>, index := 32, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 7, 8, 12, 1 ],
[ 13, 8, 9, 13 ],
[ 13, 13, 9, 12 ]
]>, gens := [
[ 7, 8, 12, 1 ],
[ 13, 8, 9, 13 ],
[ 13, 13, 9, 12 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(14)) | [
[ 7, 4, 12, 13 ],
[ 5, 12, 12, 1 ],
[ 1, 9, 9, 12 ]
]>, label := ["GL2", "7B"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 2, 2, 5 ],
[ 1, 0, 10, 9 ],
[ 9, 0, 4, 1 ],
[ 8, 7, 7, 1 ]
]>, index := 32, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 9, 13, 9, 8 ],
[ 1, 4, 6, 5 ],
[ 1, 4, 9, 13 ],
[ 10, 11, 9, 1 ]
]>, gens := [
[ 9, 13, 9, 8 ],
[ 1, 4, 6, 5 ],
[ 1, 4, 9, 13 ],
[ 10, 11, 9, 1 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(14)) | [
[ 7, 3, 9, 8 ],
[ 3, 0, 6, 5 ]
]>, label := ["GL2", "7B"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 10, 9 ],
[ 1, 2, 0, 9 ],
[ 3, 0, 0, 3 ],
[ 8, 7, 7, 1 ]
]>, index := 16, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 11, 9, 6, 9 ],
[ 3, 1, 6, 13 ]
]>, gens := [
[ 11, 9, 6, 9 ],
[ 3, 1, 6, 13 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(14)) | [
[ 1, 10, 0, 1 ],
[ 1, 6, 6, 9 ]
]>, label := ["2B", "GL7"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 4, 9 ],
[ 1, 2, 0, 1 ],
[ 1, 0, 10, 9 ],
[ 3, 0, 0, 13 ]
]>, index := 6, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 10, 1, 13, 6 ],
[ 11, 5, 8, 9 ]
]>, gens := [
[ 10, 1, 13, 6 ],
[ 11, 5, 8, 9 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(14)) | [
[ 1, 9, 13, 6 ],
[ 1, 10, 0, 1 ]
]>, label := ["GL2", "GL7"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 4, 9 ],
[ 1, 2, 0, 1 ],
[ 1, 0, 10, 9 ],
[ 3, 0, 0, 13 ],
[ 8, 7, 7, 1 ]
]>, index := 2, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >];
Genus0[<[ 2, 7 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 2, 1, 5, 10 ],
[ 5, 2, 1, 11 ],
[ 5, 13, 9, 4 ],
[ 10, 3, 9, 11 ]
]>, gens := [
[ 2, 1, 5, 10 ],
[ 5, 2, 1, 11 ],
[ 5, 13, 9, 4 ],
[ 10, 3, 9, 11 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 1, 10, 1, 11 ],
[ 2, 1, 5, 10 ]
]>, label := ["GL2", "7B.6.1"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 6, 3 ],
[ 11, 8, 0, 1 ],
[ 8, 7, 7, 1 ]
]>, index := 48, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 10, 3, 1, 13 ],
[ 10, 11, 9, 8 ],
[ 3, 6, 9, 9 ],
[ 0, 13, 3, 11 ]
]>, gens := [
[ 10, 3, 1, 13 ],
[ 10, 11, 9, 8 ],
[ 3, 6, 9, 9 ],
[ 0, 13, 3, 11 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 10, 3, 1, 13 ],
[ 3, 6, 9, 9 ]
]>, label := ["GL2", "7B.6.3"], NabG:=sub<GL(2,Integers(14)) | [
[ 3, 0, 8, 1 ],
[ 1, 2, 0, 9 ],
[ 8, 7, 7, 1 ]
]>, index := 48, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 11, 2, 3, 13 ],
[ 1, 11, 9, 6 ],
[ 6, 5, 11, 4 ]
]>, gens := [
[ 11, 2, 3, 13 ],
[ 1, 11, 9, 6 ],
[ 6, 5, 11, 4 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 1, 10, 1, 11 ],
[ 3, 10, 8, 13 ],
[ 11, 1, 5, 12 ]
]>, label := ["GL2", "7B.6.2"], NabG:=sub<GL(2,Integers(14)) | [
[ 3, 0, 10, 11 ],
[ 1, 2, 10, 3 ],
[ 1, 7, 7, 8 ]
]>, index := 48, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 9, 5, 11, 0 ],
[ 0, 5, 3, 7 ],
[ 5, 2, 1, 11 ],
[ 7, 12, 11, 5 ]
]>, gens := [
[ 9, 5, 11, 0 ],
[ 0, 5, 3, 7 ],
[ 5, 2, 1, 11 ],
[ 7, 12, 11, 5 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 5, 2, 3, 7 ],
[ 9, 5, 11, 0 ]
]>, label := ["GL2", "7B.6.1"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 10, 9 ],
[ 13, 0, 6, 1 ],
[ 3, 6, 10, 7 ],
[ 1, 7, 7, 8 ]
]>, index := 48, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 8, 1, 5, 2 ],
[ 1, 4, 9, 13 ],
[ 5, 3, 8, 1 ]
]>, gens := [
[ 8, 1, 5, 2 ],
[ 1, 4, 9, 13 ],
[ 5, 3, 8, 1 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 0, 5, 11, 12 ],
[ 5, 13, 9, 4 ]
]>, label := ["GL2", "7B.6.2"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 8, 13 ],
[ 1, 2, 12, 13 ],
[ 9, 0, 2, 5 ],
[ 8, 7, 7, 1 ]
]>, index := 48, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 10, 11, 9, 8 ],
[ 9, 0, 12, 13 ],
[ 0, 5, 11, 12 ],
[ 6, 11, 13, 3 ]
]>, gens := [
[ 10, 11, 9, 8 ],
[ 9, 0, 12, 13 ],
[ 0, 5, 11, 12 ],
[ 6, 11, 13, 3 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 0, 5, 11, 12 ],
[ 6, 11, 13, 3 ]
]>, label := ["GL2", "7B.6.3"], NabG:=sub<GL(2,Integers(14)) | [
[ 9, 0, 12, 13 ],
[ 1, 0, 8, 13 ],
[ 1, 2, 8, 7 ],
[ 8, 7, 7, 1 ]
]>, index := 48, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
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
Genus0[<[ 2, 7 ], ["C3", "C1"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 4, 1, 3, 5 ],
[ 8, 1, 11, 7 ]
]>, gens := [
[ 4, 1, 3, 5 ],
[ 8, 1, 11, 7 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C3", "C1"], H:=sub<SL(2,Integers(14)) | [
[ 1, 12, 0, 1 ],
[ 1, 4, 10, 13 ]
]>, label := ["2Cn", "GL7"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 0, 13 ],
[ 1, 2, 0, 1 ],
[ 3, 0, 10, 5 ],
[ 1, 0, 10, 13 ]
]>, index := 6, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >];
Genus0[<[ 2, 7 ], ["C3", "C3"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 6, 7, 9, 9 ],
[ 1, 13, 9, 0 ]
]>, gens := [
[ 6, 7, 9, 9 ],
[ 1, 13, 9, 0 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C3", "C3"], H:=sub<SL(2,Integers(14)) | [
[ 8, 13, 3, 5 ],
[ 10, 9, 11, 3 ]
]>, label := ["2Cn", "7B"], NabG:=sub<GL(2,Integers(14)) | [
[ 3, 0, 8, 1 ],
[ 1, 2, 0, 9 ]
]>, index := 96, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 7, 1, 5, 8 ],
[ 12, 1, 7, 9 ],
[ 3, 10, 6, 3 ]
]>, gens := [
[ 7, 1, 5, 8 ],
[ 12, 1, 7, 9 ],
[ 3, 10, 6, 3 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C3", "C3"], H:=sub<SL(2,Integers(14)) | [
[ 4, 3, 7, 9 ],
[ 5, 5, 5, 8 ]
]>, label := ["2Cn", "7B"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 8, 13 ],
[ 11, 8, 0, 1 ],
[ 1, 0, 2, 11 ]
]>, index := 96, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 9, 11, 13, 6 ],
[ 2, 11, 9, 7 ]
]>, gens := [
[ 9, 11, 13, 6 ],
[ 2, 11, 9, 7 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C3", "C3"], H:=sub<SL(2,Integers(14)) | [
[ 6, 3, 9, 7 ],
[ 5, 1, 11, 8 ]
]>, label := ["2Cn", "7B"], NabG:=sub<GL(2,Integers(14)) | [
[ 9, 0, 12, 13 ],
[ 1, 0, 8, 13 ],
[ 1, 2, 8, 7 ]
]>, index := 96, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 9, 11, 9, 0 ],
[ 9, 4, 6, 13 ]
]>, gens := [
[ 9, 11, 9, 0 ],
[ 9, 4, 6, 13 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C3", "C3"], H:=sub<SL(2,Integers(14)) | [
[ 13, 3, 9, 0 ],
[ 12, 1, 11, 1 ]
]>, label := ["2Cn", "7B"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 8, 13 ],
[ 1, 2, 10, 3 ],
[ 9, 0, 0, 9 ]
]>, index := 96, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 6, 7, 9, 9 ],
[ 1, 6, 2, 7 ]
]>, gens := [
[ 6, 7, 9, 9 ],
[ 1, 6, 2, 7 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C3", "C3"], H:=sub<SL(2,Integers(14)) | [
[ 1, 13, 3, 12 ],
[ 3, 9, 11, 10 ]
]>, label := ["2Cn", "7B"], NabG:=sub<GL(2,Integers(14)) | [
[ 3, 0, 10, 11 ],
[ 1, 2, 10, 3 ]
]>, index := 96, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 7, 1, 5, 8 ],
[ 7, 12, 6, 1 ]
]>, gens := [
[ 7, 1, 5, 8 ],
[ 7, 12, 6, 1 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C3", "C3"], H:=sub<SL(2,Integers(14)) | [
[ 0, 11, 5, 13 ],
[ 5, 5, 5, 8 ]
]>, label := ["2Cn", "7B"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 10, 9 ],
[ 13, 0, 6, 1 ],
[ 3, 6, 10, 7 ]
]>, index := 96, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
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
Genus0[<[ 2, 13 ], ["C2", "C1"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(26)) | [
[ 21, 24, 5, 11 ],
[ 13, 4, 7, 5 ]
]>, gens := [
[ 21, 24, 5, 11 ],
[ 13, 4, 7, 5 ]
], level := 26, entlevel := [ 2, 13 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(26)) | [
[ 19, 20, 4, 7 ],
[ 1, 14, 0, 1 ]
]>, label := ["2B", "GL13"], NabG:=sub<GL(2,Integers(26)) | [
[ 15, 0, 2, 11 ],
[ 1, 2, 0, 1 ],
[ 1, 0, 0, 25 ],
[ 1, 0, 14, 17 ]
]>, index := 6, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(26)) | [
[ 22, 5, 1, 10 ],
[ 21, 20, 17, 13 ],
[ 12, 3, 15, 18 ]
]>, gens := [
[ 22, 5, 1, 10 ],
[ 21, 20, 17, 13 ],
[ 12, 3, 15, 18 ]
], level := 26, entlevel := [ 2, 13 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(26)) | [
[ 17, 13, 1, 10 ],
[ 1, 22, 0, 1 ]
]>, label := ["GL2", "GL13"], NabG:=sub<GL(2,Integers(26)) | [
[ 15, 0, 12, 7 ],
[ 1, 0, 22, 23 ],
[ 1, 2, 0, 1 ],
[ 1, 13, 13, 14 ],
[ 1, 0, 0, 25 ]
]>, index := 2, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >];
Genus0[<[ 2, 13 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(26)) | [
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
Genus0[<[ 2, 13 ], ["C3", "C1"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(26)) | [
[ 17, 7, 23, 4 ],
[ 4, 21, 15, 25 ]
]>, gens := [
[ 17, 7, 23, 4 ],
[ 4, 21, 15, 25 ]
], level := 26, entlevel := [ 2, 13 ], enttype := ["C3", "C1"], H:=sub<SL(2,Integers(26)) | [
[ 17, 12, 22, 11 ],
[ 1, 8, 0, 1 ]
]>, label := ["2Cn", "GL13"], NabG:=sub<GL(2,Integers(26)) | [
[ 1, 0, 8, 21 ],
[ 15, 0, 14, 17 ],
[ 1, 0, 14, 25 ],
[ 1, 2, 0, 1 ],
[ 1, 0, 0, 25 ]
]>, index := 6, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >];
Genus0[<[ 3, 5 ], ["C2", "C1"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 7, 0, 14, 1 ],
[ 2, 5, 4, 6 ],
[ 3, 10, 1, 4 ]
]>, gens := [
[ 7, 0, 14, 1 ],
[ 2, 5, 4, 6 ],
[ 3, 10, 1, 4 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 1, 10, 0, 1 ],
[ 1, 0, 5, 1 ]
]>, label := ["GL3", "5Cs.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 7, 0, 9, 1 ],
[ 1, 10, 5, 6 ],
[ 1, 0, 5, 1 ],
[ 11, 0, 0, 11 ]
]>, index := 120, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 8, 5, 1, 9 ],
[ 13, 0, 11, 4 ],
[ 12, 10, 4, 1 ]
]>, gens := [
[ 8, 5, 1, 9 ],
[ 13, 0, 11, 4 ],
[ 12, 10, 4, 1 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 1, 5, 0, 1 ],
[ 11, 5, 10, 6 ]
]>, label := ["GL3", "5Cs.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 7, 0, 12, 4 ],
[ 11, 10, 5, 6 ],
[ 1, 0, 5, 1 ],
[ 11, 0, 5, 11 ]
]>, index := 120, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 4, 9, 14, 1 ],
[ 11, 11, 12, 4 ],
[ 14, 14, 9, 11 ]
]>, gens := [
[ 4, 9, 14, 1 ],
[ 11, 11, 12, 4 ],
[ 14, 14, 9, 11 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 1, 10, 0, 1 ],
[ 4, 0, 5, 4 ]
]>, label := ["GL3", "5Ns.2.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 0, 10, 1 ],
[ 7, 0, 0, 7 ],
[ 11, 0, 10, 11 ],
[ 7, 12, 12, 13 ],
[ 6, 10, 5, 6 ]
]>, index := 60, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 2, 10, 8, 6 ],
[ 10, 13, 8, 13 ],
[ 0, 8, 8, 8 ]
]>, gens := [
[ 2, 10, 8, 6 ],
[ 10, 13, 8, 13 ],
[ 0, 8, 8, 8 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 1, 10, 0, 1 ],
[ 9, 14, 4, 3 ]
]>, label := ["GL3", "5B.4.2"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 0, 10, 1 ],
[ 7, 0, 3, 1 ],
[ 11, 0, 0, 11 ],
[ 11, 5, 0, 11 ],
[ 7, 9, 3, 13 ]
]>, index := 24, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 3, 2, 2, 10 ],
[ 8, 1, 5, 6 ],
[ 8, 7, 7, 0 ]
]>, gens := [
[ 3, 2, 2, 10 ],
[ 8, 1, 5, 6 ],
[ 8, 7, 7, 0 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 13, 11, 11, 14 ],
[ 1, 10, 0, 1 ],
[ 6, 10, 5, 6 ]
]>, label := ["GL3", "5B.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 0, 10, 1 ],
[ 1, 10, 0, 1 ],
[ 11, 0, 0, 11 ],
[ 1, 0, 12, 7 ],
[ 7, 3, 12, 7 ]
]>, index := 24, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 3, 2, 2, 5 ],
[ 10, 13, 13, 3 ],
[ 7, 14, 0, 4 ]
]>, gens := [
[ 3, 2, 2, 5 ],
[ 10, 13, 13, 3 ],
[ 7, 14, 0, 4 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 1, 5, 0, 1 ],
[ 13, 1, 1, 14 ]
]>, label := ["GL3", "5B.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 4, 0, 6, 7 ],
[ 11, 10, 10, 1 ],
[ 1, 0, 10, 1 ],
[ 1, 0, 6, 4 ],
[ 11, 0, 5, 11 ],
[ 10, 12, 3, 10 ]
]>, index := 24, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 10, 13, 8, 13 ],
[ 8, 10, 2, 9 ],
[ 0, 8, 8, 8 ]
]>, gens := [
[ 10, 13, 8, 13 ],
[ 8, 10, 2, 9 ],
[ 0, 8, 8, 8 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 1, 5, 0, 1 ],
[ 9, 14, 4, 3 ]
]>, label := ["GL3", "5B.4.2"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 0, 10, 1 ],
[ 10, 3, 12, 10 ],
[ 6, 5, 10, 6 ],
[ 7, 0, 9, 4 ],
[ 11, 0, 0, 11 ]
]>, index := 24, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 14, 12, 12, 13 ],
[ 2, 6, 12, 2 ]
]>, gens := [
[ 14, 12, 12, 13 ],
[ 2, 6, 12, 2 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 1, 12, 0, 1 ],
[ 13, 9, 12, 13 ]
]>, label := ["3Cs", "GL5"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 0, 3, 4 ],
[ 1, 0, 6, 4 ],
[ 7, 0, 6, 13 ],
[ 4, 12, 3, 10 ],
[ 1, 0, 0, 11 ]
]>, index := 24, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 4, 9, 14, 1 ],
[ 9, 4, 8, 1 ],
[ 8, 8, 13, 12 ],
[ 11, 11, 13, 14 ]
]>, gens := [
[ 4, 9, 14, 1 ],
[ 9, 4, 8, 1 ],
[ 8, 8, 13, 12 ],
[ 11, 11, 13, 14 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 1, 5, 0, 1 ],
[ 3, 10, 14, 12 ]
]>, label := ["GL3", "5Ns"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 0, 3, 4 ],
[ 1, 10, 5, 6 ],
[ 13, 3, 6, 7 ],
[ 1, 0, 5, 1 ],
[ 7, 0, 6, 13 ],
[ 11, 0, 0, 11 ]
]>, index := 30, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 14, 9, 4, 1 ],
[ 11, 10, 11, 12 ],
[ 13, 10, 5, 3 ]
]>, gens := [
[ 14, 9, 4, 1 ],
[ 11, 10, 11, 12 ],
[ 13, 10, 5, 3 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 1, 5, 0, 1 ],
[ 9, 10, 5, 14 ],
[ 12, 5, 1, 13 ]
]>, label := ["GL3", "5Ns"], NabG:=sub<GL(2,Integers(15)) | [
[ 7, 0, 12, 4 ],
[ 1, 0, 3, 4 ],
[ 1, 0, 10, 1 ],
[ 1, 0, 6, 7 ],
[ 6, 5, 10, 6 ],
[ 11, 0, 5, 11 ]
]>, index := 30, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 3, 7, 2, 4 ],
[ 11, 14, 9, 8 ],
[ 1, 9, 4, 14 ]
]>, gens := [
[ 3, 7, 2, 4 ],
[ 11, 14, 9, 8 ],
[ 1, 9, 4, 14 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 1, 5, 0, 1 ],
[ 6, 8, 13, 0 ]
]>, label := ["GL3", "5Nn"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 0, 10, 1 ],
[ 7, 0, 0, 7 ],
[ 11, 0, 10, 11 ],
[ 1, 5, 10, 6 ],
[ 10, 3, 3, 4 ],
[ 7, 3, 3, 1 ]
]>, index := 20, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 11, 9, 14, 14 ],
[ 1, 2, 7, 7 ]
]>, gens := [
[ 11, 9, 14, 14 ],
[ 1, 2, 7, 7 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 1, 5, 0, 1 ],
[ 10, 2, 7, 6 ]
]>, label := ["GL3", "5Nn"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 0, 5, 1 ],
[ 11, 0, 10, 11 ],
[ 6, 10, 5, 1 ],
[ 7, 0, 0, 7 ],
[ 7, 3, 3, 13 ],
[ 10, 9, 9, 7 ]
]>, index := 20, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 6, 1, 8, 0 ],
[ 6, 4, 4, 3 ],
[ 9, 4, 1, 3 ]
]>, gens := [
[ 6, 1, 8, 0 ],
[ 6, 4, 4, 3 ],
[ 9, 4, 1, 3 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 5, 3, 3, 8 ],
[ 1, 9, 0, 1 ]
]>, label := ["3Ns", "GL5"], NabG:=sub<GL(2,Integers(15)) | [
[ 7, 0, 9, 7 ],
[ 11, 0, 0, 1 ],
[ 1, 0, 6, 4 ],
[ 10, 12, 12, 1 ],
[ 1, 0, 9, 4 ],
[ 1, 0, 0, 11 ]
]>, index := 12, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 3, 10, 8, 8 ],
[ 10, 7, 14, 0 ],
[ 8, 2, 3, 1 ],
[ 6, 4, 11, 8 ]
]>, gens := [
[ 3, 10, 8, 8 ],
[ 10, 7, 14, 0 ],
[ 8, 2, 3, 1 ],
[ 6, 4, 11, 8 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 1, 12, 0, 1 ],
[ 9, 7, 8, 8 ]
]>, label := ["3B", "GL5"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 0, 3, 4 ],
[ 1, 0, 12, 4 ],
[ 10, 6, 6, 10 ],
[ 7, 0, 9, 13 ],
[ 1, 10, 0, 11 ],
[ 11, 0, 10, 1 ]
]>, index := 8, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 5, 6, 12, 2 ],
[ 12, 7, 2, 14 ],
[ 6, 1, 11, 5 ],
[ 14, 12, 4, 4 ]
]>, gens := [
[ 5, 6, 12, 2 ],
[ 12, 7, 2, 14 ],
[ 6, 1, 11, 5 ],
[ 14, 12, 4, 4 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 1, 12, 0, 1 ],
[ 0, 7, 2, 14 ]
]>, label := ["3B", "GL5"], NabG:=sub<GL(2,Integers(15)) | [
[ 7, 0, 6, 13 ],
[ 1, 0, 6, 4 ],
[ 1, 0, 5, 11 ],
[ 11, 5, 0, 1 ],
[ 10, 12, 12, 1 ],
[ 1, 0, 3, 1 ]
]>, index := 8, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 1, 11, 8, 5 ],
[ 1, 8, 1, 1 ]
]>, gens := [
[ 1, 11, 8, 5 ],
[ 1, 8, 1, 1 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 11, 9, 3, 8 ],
[ 6, 11, 13, 9 ],
[ 1, 6, 0, 1 ]
]>, label := ["3Nn", "GL5"], NabG:=sub<GL(2,Integers(15)) | [
[ 6, 10, 5, 6 ],
[ 1, 0, 0, 4 ],
[ 11, 0, 0, 1 ],
[ 1, 0, 0, 11 ],
[ 7, 6, 3, 1 ],
[ 1, 0, 12, 1 ],
[ 7, 0, 0, 13 ]
]>, index := 6, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >];
Genus0[<[ 3, 5 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
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
Genus0[<[ 3, 7 ], ["C2", "C1"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 8, 11, 16, 20 ],
[ 14, 2, 5, 3 ],
[ 15, 5, 2, 5 ]
]>, gens := [
[ 8, 11, 16, 20 ],
[ 14, 2, 5, 3 ],
[ 15, 5, 2, 5 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 4, 17, 18, 19 ],
[ 1, 7, 0, 1 ],
[ 4, 3, 11, 19 ]
]>, label := ["GL3", "7B.6.2"], NabG:=sub<GL(2,Integers(21)) | [
[ 10, 0, 15, 4 ],
[ 1, 0, 14, 1 ],
[ 15, 14, 7, 1 ],
[ 16, 15, 6, 7 ],
[ 8, 0, 7, 8 ]
]>, index := 48, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 10, 5, 16, 7 ],
[ 15, 19, 16, 5 ],
[ 3, 14, 8, 4 ]
]>, gens := [
[ 10, 5, 16, 7 ],
[ 15, 19, 16, 5 ],
[ 3, 14, 8, 4 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 20, 5, 16, 3 ],
[ 1, 14, 0, 1 ]
]>, label := ["GL3", "7B.6.2"], NabG:=sub<GL(2,Integers(21)) | [
[ 1, 0, 12, 13 ],
[ 8, 0, 7, 8 ],
[ 16, 0, 0, 16 ],
[ 1, 0, 7, 1 ],
[ 1, 14, 0, 1 ],
[ 7, 6, 6, 7 ]
]>, index := 48, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 12, 20, 20, 19 ],
[ 9, 10, 4, 17 ],
[ 19, 13, 8, 7 ]
]>, gens := [
[ 12, 20, 20, 19 ],
[ 9, 10, 4, 17 ],
[ 19, 13, 8, 7 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 1, 14, 0, 1 ],
[ 11, 3, 11, 5 ]
]>, label := ["GL3", "7B.6.1"], NabG:=sub<GL(2,Integers(21)) | [
[ 4, 3, 18, 19 ],
[ 1, 0, 14, 1 ],
[ 1, 0, 9, 10 ],
[ 8, 0, 7, 8 ],
[ 1, 7, 14, 15 ]
]>, index := 48, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 2, 1, 17, 11 ],
[ 1, 16, 5, 4 ],
[ 9, 17, 11, 17 ]
]>, gens := [
[ 2, 1, 17, 11 ],
[ 1, 16, 5, 4 ],
[ 9, 17, 11, 17 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 1, 14, 0, 1 ],
[ 5, 18, 17, 11 ]
]>, label := ["GL3", "7B.6.1"], NabG:=sub<GL(2,Integers(21)) | [
[ 1, 0, 15, 16 ],
[ 8, 7, 14, 15 ],
[ 19, 18, 18, 19 ],
[ 13, 0, 3, 16 ],
[ 1, 0, 7, 1 ],
[ 8, 0, 7, 8 ]
]>, index := 48, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 15, 16, 19, 4 ],
[ 2, 17, 4, 17 ],
[ 16, 20, 20, 9 ]
]>, gens := [
[ 15, 16, 19, 4 ],
[ 2, 17, 4, 17 ],
[ 16, 20, 20, 9 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 1, 14, 0, 1 ],
[ 4, 10, 4, 5 ]
]>, label := ["GL3", "7B.6.3"], NabG:=sub<GL(2,Integers(21)) | [
[ 16, 0, 6, 1 ],
[ 1, 0, 12, 13 ],
[ 8, 0, 0, 8 ],
[ 15, 7, 14, 15 ],
[ 19, 3, 15, 10 ],
[ 1, 0, 7, 1 ]
]>, index := 48, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 17, 20, 17, 0 ],
[ 16, 10, 11, 10 ],
[ 9, 17, 11, 10 ]
]>, gens := [
[ 17, 20, 17, 0 ],
[ 16, 10, 11, 10 ],
[ 9, 17, 11, 10 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 1, 7, 0, 1 ],
[ 9, 8, 13, 0 ]
]>, label := ["GL3", "7B.6.3"], NabG:=sub<GL(2,Integers(21)) | [
[ 10, 0, 12, 1 ],
[ 10, 15, 12, 7 ],
[ 1, 0, 14, 1 ],
[ 8, 0, 0, 8 ],
[ 1, 14, 7, 15 ]
]>, index := 48, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 14, 6, 3, 20 ],
[ 7, 12, 12, 8 ]
]>, gens := [
[ 14, 6, 3, 20 ],
[ 7, 12, 12, 8 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 1, 12, 0, 1 ],
[ 10, 0, 18, 19 ]
]>, label := ["3Cs", "GL7"], NabG:=sub<GL(2,Integers(21)) | [
[ 1, 0, 3, 4 ],
[ 1, 0, 9, 16 ],
[ 8, 0, 0, 1 ],
[ 10, 0, 12, 19 ],
[ 19, 3, 6, 10 ]
]>, index := 24, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 11, 1, 20, 2 ],
[ 8, 11, 16, 20 ],
[ 15, 10, 4, 16 ],
[ 5, 14, 19, 17 ]
]>, gens := [
[ 11, 1, 20, 2 ],
[ 8, 11, 16, 20 ],
[ 15, 10, 4, 16 ],
[ 5, 14, 19, 17 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 1, 14, 0, 1 ],
[ 17, 1, 8, 3 ],
[ 14, 3, 16, 20 ]
]>, label := ["GL3", "7B"], NabG:=sub<GL(2,Integers(21)) | [
[ 1, 0, 3, 4 ],
[ 4, 6, 0, 19 ],
[ 15, 14, 7, 15 ],
[ 10, 0, 6, 16 ],
[ 8, 0, 14, 8 ],
[ 1, 0, 7, 1 ]
]>, index := 16, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 19, 2, 5, 15 ],
[ 5, 16, 5, 8 ],
[ 5, 16, 10, 6 ]
]>, gens := [
[ 19, 2, 5, 15 ],
[ 5, 16, 5, 8 ],
[ 5, 16, 10, 6 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 1, 7, 0, 1 ],
[ 4, 16, 7, 2 ],
[ 9, 7, 2, 4 ]
]>, label := ["GL3", "7B"], NabG:=sub<GL(2,Integers(21)) | [
[ 16, 0, 6, 1 ],
[ 1, 0, 14, 1 ],
[ 1, 14, 0, 1 ],
[ 1, 0, 9, 10 ],
[ 13, 18, 18, 13 ],
[ 8, 0, 7, 8 ]
]>, index := 16, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 3, 4, 19, 3 ],
[ 3, 17, 11, 12 ],
[ 6, 1, 2, 9 ]
]>, gens := [
[ 3, 4, 19, 3 ],
[ 3, 17, 11, 12 ],
[ 6, 1, 2, 9 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 14, 15, 6, 2 ],
[ 1, 3, 0, 1 ],
[ 1, 0, 9, 1 ]
]>, label := ["3Ns", "GL7"], NabG:=sub<GL(2,Integers(21)) | [
[ 1, 0, 18, 4 ],
[ 13, 18, 18, 10 ],
[ 8, 0, 0, 1 ],
[ 10, 0, 0, 13 ],
[ 1, 0, 15, 4 ],
[ 1, 0, 0, 8 ]
]>, index := 12, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 5, 15, 11, 14 ],
[ 1, 9, 20, 8 ]
]>, gens := [
[ 5, 15, 11, 14 ],
[ 1, 9, 20, 8 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 10, 3, 20, 4 ],
[ 1, 15, 0, 1 ]
]>, label := ["3B", "GL7"], NabG:=sub<GL(2,Integers(21)) | [
[ 1, 0, 6, 16 ],
[ 1, 0, 9, 16 ],
[ 8, 0, 0, 1 ],
[ 10, 9, 18, 1 ],
[ 10, 0, 18, 13 ],
[ 1, 0, 7, 1 ]
]>, index := 8, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 14, 15, 16, 11 ],
[ 2, 6, 4, 10 ]
]>, gens := [
[ 14, 15, 16, 11 ],
[ 2, 6, 4, 10 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 1, 3, 0, 1 ],
[ 4, 15, 4, 10 ]
]>, label := ["3B", "GL7"], NabG:=sub<GL(2,Integers(21)) | [
[ 13, 15, 15, 4 ],
[ 1, 0, 3, 16 ],
[ 1, 0, 12, 16 ],
[ 1, 0, 0, 8 ],
[ 10, 0, 18, 13 ],
[ 1, 0, 7, 1 ]
]>, index := 8, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 13, 11, 10, 7 ],
[ 16, 1, 4, 14 ],
[ 8, 20, 4, 5 ]
]>, gens := [
[ 13, 11, 10, 7 ],
[ 16, 1, 4, 14 ],
[ 8, 20, 4, 5 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 9, 4, 11, 12 ],
[ 1, 15, 0, 1 ]
]>, label := ["3Nn", "GL7"], NabG:=sub<GL(2,Integers(21)) | [
[ 1, 0, 15, 16 ],
[ 8, 14, 7, 8 ],
[ 8, 0, 0, 8 ],
[ 1, 0, 12, 1 ],
[ 19, 12, 9, 7 ],
[ 10, 0, 6, 10 ]
]>, index := 6, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >];
EntaglementGroup := recformat<G: GrpMat, gens: SeqEnum, level: RngIntElt, H: GrpMat, entlevel: SeqEnum, enttype: SeqEnum, label: SeqEnum, NabG: GrpMat, index: RngIntElt, jmap: FldFunRatUElt, jInvs: SeqEnum, containsmI: BoolElt, explained: BoolElt, EntInKerOfIsog: BoolElt, EM: CrvEll, jEM: FldFunRatMElt>;

Genus1r0 := AssociativeArray();

Genus1r0[<[ 2, 3 ], ["C2", "C1"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 5, 5, 0, 1 ]
]>, gens := [
[ 5, 5, 0, 1 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(6)) | []>, label := ["2B", "3Cs"], NabG:=sub<GL(2,Integers(6)) | []>, index := 144, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 5, 0, 0, 5 ],
[ 5, 5, 0, 1 ]
]>, gens := [
[ 5, 0, 0, 5 ],
[ 5, 5, 0, 1 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(6)) | [
[ 5, 0, 0, 5 ]
]>, label := ["2B", "3Cs"], NabG:=sub<GL(2,Integers(6)) | [
[ 5, 0, 0, 5 ]
]>, index := 72, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 4, 3, 3, 1 ],
[ 2, 5, 3, 4 ]
]>, gens := [
[ 4, 3, 3, 1 ],
[ 2, 5, 3, 4 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(6)) | [
[ 4, 3, 3, 1 ]
]>, label := ["GL2", "3Cs"], NabG:=sub<GL(2,Integers(6)) | [
[ 1, 3, 3, 4 ]
]>, index := 48, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 5, 2, 2, 1 ],
[ 1, 3, 4, 5 ]
]>, gens := [
[ 5, 2, 2, 1 ],
[ 1, 3, 4, 5 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(6)) | [
[ 5, 2, 2, 1 ]
]>, label := ["2B", "3Ns"], NabG:=sub<GL(2,Integers(6)) | [
[ 5, 0, 0, 5 ],
[ 5, 2, 2, 1 ]
]>, index := 36, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 4, 1, 3, 2 ],
[ 2, 3, 3, 5 ]
]>, gens := [
[ 4, 1, 3, 2 ],
[ 2, 3, 3, 5 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(6)) | [
[ 5, 3, 3, 2 ]
]>, label := ["GL2", "3Cs"], NabG:=sub<GL(2,Integers(6)) | [
[ 1, 3, 3, 4 ],
[ 5, 0, 0, 5 ]
]>, index := 24, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 3, 5, 2, 5 ],
[ 3, 2, 4, 3 ]
]>, gens := [
[ 3, 5, 2, 5 ],
[ 3, 2, 4, 3 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(6)) | [
[ 1, 2, 2, 5 ],
[ 3, 2, 4, 3 ]
]>, label := ["2B", "3Nn"], NabG:=sub<GL(2,Integers(6)) | [
[ 1, 2, 2, 5 ],
[ 5, 0, 0, 5 ],
[ 5, 2, 2, 1 ]
]>, index := 18, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 1, 1, 1, 2 ],
[ 4, 3, 1, 2 ]
]>, gens := [
[ 1, 1, 1, 2 ],
[ 4, 3, 1, 2 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(6)) | [
[ 1, 1, 1, 2 ]
]>, label := ["GL2", "3Ns"], NabG:=sub<GL(2,Integers(6)) | [
[ 1, 3, 3, 4 ],
[ 5, 0, 0, 5 ],
[ 5, 2, 2, 1 ]
]>, index := 12, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(6)) | [
[ 2, 5, 5, 1 ],
[ 0, 1, 5, 3 ],
[ 3, 2, 5, 5 ]
]>, gens := [
[ 2, 5, 5, 1 ],
[ 0, 1, 5, 3 ],
[ 3, 2, 5, 5 ]
], level := 6, entlevel := [ 2, 3 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(6)) | [
[ 2, 5, 5, 1 ],
[ 0, 1, 5, 3 ]
]>, label := ["GL2", "3Nn"], NabG:=sub<GL(2,Integers(6)) | [
[ 1, 2, 2, 5 ],
[ 5, 0, 0, 5 ],
[ 4, 3, 3, 1 ],
[ 5, 2, 2, 1 ]
]>, index := 6, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >];
Genus1r0[<[ 2, 5 ], ["C2", "C1"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 3, 0, 3, 1 ],
[ 1, 0, 8, 1 ]
]>, gens := [
[ 3, 0, 3, 1 ],
[ 1, 0, 8, 1 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(10)) | [
[ 1, 0, 8, 1 ]
]>, label := ["2B", "5B.4.1"], NabG:=sub<GL(2,Integers(10)) | [
[ 9, 0, 0, 1 ],
[ 1, 0, 6, 1 ]
]>, index := 144, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 1, 0, 8, 1 ],
[ 7, 0, 7, 9 ]
]>, gens := [
[ 1, 0, 8, 1 ],
[ 7, 0, 7, 9 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(10)) | [
[ 1, 0, 8, 1 ]
]>, label := ["2B", "5B.4.1"], NabG:=sub<GL(2,Integers(10)) | [
[ 9, 0, 0, 1 ],
[ 1, 0, 2, 1 ]
]>, index := 144, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 9, 0, 9, 3 ],
[ 1, 0, 8, 1 ]
]>, gens := [
[ 9, 0, 9, 3 ],
[ 1, 0, 8, 1 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(10)) | [
[ 1, 0, 8, 1 ]
]>, label := ["2B", "5B.4.2"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 0, 6, 9 ],
[ 1, 0, 0, 9 ]
]>, index := 144, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 1, 0, 6, 1 ],
[ 1, 0, 1, 7 ]
]>, gens := [
[ 1, 0, 6, 1 ],
[ 1, 0, 1, 7 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(10)) | [
[ 1, 0, 6, 1 ]
]>, label := ["2B", "5B.4.2"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 0, 4, 9 ],
[ 1, 0, 0, 9 ]
]>, index := 144, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 9, 0, 2, 9 ],
[ 7, 0, 7, 9 ]
]>, gens := [
[ 9, 0, 2, 9 ],
[ 7, 0, 7, 9 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(10)) | [
[ 9, 0, 2, 9 ]
]>, label := ["2B", "5B.4.1"], NabG:=sub<GL(2,Integers(10)) | [
[ 9, 0, 0, 1 ],
[ 1, 0, 4, 9 ],
[ 1, 0, 0, 9 ]
]>, index := 72, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 9, 0, 9, 3 ],
[ 9, 0, 4, 9 ]
]>, gens := [
[ 9, 0, 9, 3 ],
[ 9, 0, 4, 9 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(10)) | [
[ 9, 0, 4, 9 ]
]>, label := ["2B", "5B.4.2"], NabG:=sub<GL(2,Integers(10)) | [
[ 9, 0, 0, 1 ],
[ 1, 0, 0, 9 ],
[ 1, 0, 8, 9 ]
]>, index := 72, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 9, 0, 9, 3 ],
[ 6, 5, 9, 1 ],
[ 1, 5, 7, 4 ]
]>, gens := [
[ 9, 0, 9, 3 ],
[ 6, 5, 9, 1 ],
[ 1, 5, 7, 4 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(10)) | [
[ 6, 5, 9, 1 ]
]>, label := ["GL2", "5B.4.2"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 0, 2, 1 ],
[ 1, 0, 0, 9 ],
[ 6, 5, 5, 1 ]
]>, index := 48, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 6, 5, 3, 1 ],
[ 1, 5, 3, 4 ],
[ 1, 0, 1, 7 ]
]>, gens := [
[ 6, 5, 3, 1 ],
[ 1, 5, 3, 4 ],
[ 1, 0, 1, 7 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(10)) | [
[ 6, 5, 3, 1 ]
]>, label := ["GL2", "5B.4.2"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 5, 5, 6 ],
[ 1, 0, 8, 1 ],
[ 1, 0, 0, 9 ]
]>, index := 48, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 3, 0, 3, 1 ],
[ 4, 5, 7, 1 ],
[ 1, 5, 9, 6 ]
]>, gens := [
[ 3, 0, 3, 1 ],
[ 4, 5, 7, 1 ],
[ 1, 5, 9, 6 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(10)) | [
[ 6, 5, 3, 1 ]
]>, label := ["GL2", "5B.4.1"], NabG:=sub<GL(2,Integers(10)) | [
[ 9, 0, 0, 1 ],
[ 1, 0, 4, 1 ],
[ 6, 5, 5, 1 ]
]>, index := 48, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 1, 5, 1, 6 ],
[ 4, 5, 1, 1 ],
[ 7, 0, 7, 9 ]
]>, gens := [
[ 1, 5, 1, 6 ],
[ 4, 5, 1, 1 ],
[ 7, 0, 7, 9 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(10)) | [
[ 1, 5, 1, 6 ]
]>, label := ["GL2", "5B.4.1"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 5, 5, 6 ],
[ 9, 0, 0, 1 ],
[ 1, 0, 6, 1 ]
]>, index := 48, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 9, 0, 9, 3 ],
[ 3, 0, 2, 3 ]
]>, gens := [
[ 9, 0, 9, 3 ],
[ 3, 0, 2, 3 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(10)) | [
[ 7, 0, 2, 3 ],
[ 9, 0, 8, 9 ]
]>, label := ["2B", "5B"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 0, 6, 1 ],
[ 1, 0, 0, 9 ],
[ 7, 0, 4, 7 ]
]>, index := 36, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 9, 0, 9, 3 ],
[ 4, 5, 3, 1 ],
[ 4, 5, 7, 9 ]
]>, gens := [
[ 9, 0, 9, 3 ],
[ 4, 5, 3, 1 ],
[ 4, 5, 7, 9 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(10)) | [
[ 6, 5, 3, 1 ],
[ 4, 5, 7, 9 ]
]>, label := ["GL2", "5B.4.2"], NabG:=sub<GL(2,Integers(10)) | [
[ 9, 0, 0, 1 ],
[ 1, 0, 4, 9 ],
[ 1, 0, 0, 9 ],
[ 6, 5, 5, 1 ]
]>, index := 24, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 9, 5, 1, 6 ],
[ 9, 5, 3, 4 ],
[ 7, 0, 7, 9 ]
]>, gens := [
[ 9, 5, 1, 6 ],
[ 9, 5, 3, 4 ],
[ 7, 0, 7, 9 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(10)) | [
[ 1, 5, 1, 6 ],
[ 9, 5, 3, 4 ]
]>, label := ["GL2", "5B.4.1"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 5, 5, 6 ],
[ 9, 0, 0, 1 ],
[ 1, 0, 2, 9 ],
[ 1, 0, 0, 9 ]
]>, index := 24, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 7, 9, 8, 7 ],
[ 1, 8, 1, 1 ],
[ 2, 5, 5, 3 ]
]>, gens := [
[ 7, 9, 8, 7 ],
[ 1, 8, 1, 1 ],
[ 2, 5, 5, 3 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(10)) | [
[ 9, 4, 2, 1 ],
[ 2, 5, 5, 3 ]
]>, label := ["GL2", "5Nn"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 5, 5, 6 ],
[ 7, 0, 0, 3 ],
[ 1, 0, 0, 9 ],
[ 7, 2, 4, 7 ]
]>, index := 20, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
[ 9, 0, 9, 3 ],
[ 2, 5, 7, 3 ],
[ 8, 5, 7, 3 ]
]>, gens := [
[ 9, 0, 9, 3 ],
[ 2, 5, 7, 3 ],
[ 8, 5, 7, 3 ]
], level := 10, entlevel := [ 2, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(10)) | [
[ 2, 5, 9, 3 ],
[ 2, 5, 7, 3 ]
]>, label := ["GL2", "5B"], NabG:=sub<GL(2,Integers(10)) | [
[ 1, 5, 5, 6 ],
[ 1, 0, 6, 1 ],
[ 1, 0, 0, 9 ],
[ 7, 0, 4, 7 ]
]>, index := 12, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >];
Genus1r0[<[ 2, 5 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
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
Genus1r0[<[ 2, 5 ], ["S3", "S3"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(10)) | [
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
Genus1r0[<[ 2, 7 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 1, 4, 2, 13 ],
[ 11, 12, 11, 9 ]
]>, gens := [
[ 1, 4, 2, 13 ],
[ 11, 12, 11, 9 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 1, 10, 1, 11 ]
]>, label := ["2B", "7B.6.2"], NabG:=sub<GL(2,Integers(14)) | [
[ 3, 0, 10, 11 ],
[ 1, 2, 10, 3 ]
]>, index := 144, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 1, 4, 9, 13 ],
[ 11, 12, 11, 9 ]
]>, gens := [
[ 1, 4, 9, 13 ],
[ 11, 12, 11, 9 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 7, 12, 11, 5 ]
]>, label := ["2B", "7B.6.2"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 8, 13 ],
[ 1, 2, 10, 3 ],
[ 9, 0, 0, 9 ]
]>, index := 144, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 10, 11, 9, 8 ],
[ 1, 6, 8, 9 ],
[ 0, 5, 11, 12 ]
]>, gens := [
[ 10, 11, 9, 8 ],
[ 1, 6, 8, 9 ],
[ 0, 5, 11, 12 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 0, 5, 11, 12 ]
]>, label := ["2B", "7B.6.3"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 8, 13 ],
[ 9, 0, 4, 1 ],
[ 1, 2, 8, 7 ]
]>, index := 144, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 11, 4, 13, 1 ],
[ 5, 2, 1, 11 ],
[ 3, 10, 0, 1 ]
]>, gens := [
[ 11, 4, 13, 1 ],
[ 5, 2, 1, 11 ],
[ 3, 10, 0, 1 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 11, 4, 13, 1 ]
]>, label := ["2B", "7B.6.1"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 10, 9 ],
[ 9, 12, 0, 1 ],
[ 13, 4, 0, 1 ]
]>, index := 144, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 10, 11, 9, 8 ],
[ 8, 3, 1, 4 ],
[ 11, 2, 12, 9 ]
]>, gens := [
[ 10, 11, 9, 8 ],
[ 8, 3, 1, 4 ],
[ 11, 2, 12, 9 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 8, 3, 1, 4 ]
]>, label := ["2B", "7B.6.3"], NabG:=sub<GL(2,Integers(14)) | [
[ 3, 0, 8, 1 ],
[ 1, 2, 0, 9 ]
]>, index := 144, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 11, 4, 0, 13 ],
[ 1, 10, 1, 11 ],
[ 5, 2, 1, 11 ]
]>, gens := [
[ 11, 4, 0, 13 ],
[ 1, 10, 1, 11 ],
[ 5, 2, 1, 11 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 1, 10, 1, 11 ]
]>, label := ["2B", "7B.6.1"], NabG:=sub<GL(2,Integers(14)) | [
[ 13, 0, 6, 1 ],
[ 3, 6, 10, 7 ],
[ 1, 0, 2, 11 ]
]>, index := 144, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 10, 11, 9, 8 ],
[ 13, 3, 5, 8 ]
]>, gens := [
[ 10, 11, 9, 8 ],
[ 13, 3, 5, 8 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 6, 7, 7, 6 ],
[ 13, 1, 4, 9 ]
]>, label := ["GL2", "Remove"], NabG:=sub<GL(2,Integers(14)) | [
[ 9, 0, 0, 9 ],
[ 1, 2, 8, 7 ],
[ 1, 7, 7, 8 ]
]>, index := 112, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
[ 6, 1, 1, 1 ],
[ 9, 12, 5, 13 ],
[ 3, 0, 7, 3 ],
[ 9, 5, 12, 13 ]
]>, gens := [
[ 6, 1, 1, 1 ],
[ 9, 12, 5, 13 ],
[ 3, 0, 7, 3 ],
[ 9, 5, 12, 13 ]
], level := 14, entlevel := [ 2, 7 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(14)) | [
[ 9, 12, 5, 13 ],
[ 9, 5, 12, 13 ]
]>, label := ["GL2", "Remove"], NabG:=sub<GL(2,Integers(14)) | [
[ 1, 0, 12, 13 ],
[ 9, 0, 10, 5 ],
[ 3, 4, 4, 9 ],
[ 1, 7, 7, 8 ]
]>, index := 112, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
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
Genus1r0[<[ 2, 11 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(22)) | [
[ 14, 5, 17, 15 ],
[ 5, 3, 8, 21 ],
[ 9, 1, 5, 2 ]
]>, gens := [
[ 14, 5, 17, 15 ],
[ 5, 3, 8, 21 ],
[ 9, 1, 5, 2 ]
], level := 22, entlevel := [ 2, 11 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(22)) | [
[ 7, 8, 3, 13 ],
[ 0, 21, 1, 13 ]
]>, label := ["GL2", "Remove"], NabG:=sub<GL(2,Integers(22)) | [
[ 13, 0, 18, 9 ],
[ 1, 11, 11, 12 ],
[ 1, 2, 0, 21 ]
]>, index := 120, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(22)) | [
[ 15, 8, 3, 21 ],
[ 13, 15, 11, 20 ],
[ 0, 7, 15, 19 ]
]>, gens := [
[ 15, 8, 3, 21 ],
[ 13, 15, 11, 20 ],
[ 0, 7, 15, 19 ]
], level := 22, entlevel := [ 2, 11 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(22)) | [
[ 9, 10, 1, 11 ],
[ 5, 15, 7, 8 ]
]>, label := ["GL2", "Remove"], NabG:=sub<GL(2,Integers(22)) | [
[ 1, 0, 20, 21 ],
[ 15, 0, 14, 7 ],
[ 1, 11, 11, 12 ],
[ 13, 4, 18, 5 ]
]>, index := 120, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(22)) | [
[ 15, 5, 6, 5 ],
[ 11, 21, 1, 2 ],
[ 5, 21, 21, 16 ]
]>, gens := [
[ 15, 5, 6, 5 ],
[ 11, 21, 1, 2 ],
[ 5, 21, 21, 16 ]
], level := 22, entlevel := [ 2, 11 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(22)) | [
[ 15, 5, 6, 5 ],
[ 11, 21, 1, 2 ]
]>, label := ["GL2", "Remove"], NabG:=sub<GL(2,Integers(22)) | [
[ 13, 0, 12, 3 ],
[ 12, 11, 11, 1 ],
[ 1, 2, 0, 21 ]
]>, index := 120, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(22)) | [
[ 15, 5, 6, 5 ],
[ 15, 19, 19, 4 ],
[ 11, 21, 1, 2 ]
]>, gens := [
[ 15, 5, 6, 5 ],
[ 15, 19, 19, 4 ],
[ 11, 21, 1, 2 ]
], level := 22, entlevel := [ 2, 11 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(22)) | [
[ 15, 5, 6, 5 ],
[ 11, 21, 1, 2 ]
]>, label := ["GL2", "Remove"], NabG:=sub<GL(2,Integers(22)) | [
[ 13, 0, 10, 1 ],
[ 1, 11, 11, 12 ],
[ 1, 2, 0, 21 ]
]>, index := 120, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(22)) | [
[ 13, 1, 21, 0 ],
[ 6, 7, 9, 19 ],
[ 0, 1, 21, 20 ]
]>, gens := [
[ 13, 1, 21, 0 ],
[ 6, 7, 9, 19 ],
[ 0, 1, 21, 20 ]
], level := 22, entlevel := [ 2, 11 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(22)) | [
[ 13, 1, 21, 0 ],
[ 1, 2, 9, 19 ]
]>, label := ["GL2", "Remove"], NabG:=sub<GL(2,Integers(22)) | [
[ 21, 0, 2, 1 ],
[ 1, 0, 4, 5 ],
[ 1, 11, 11, 12 ],
[ 1, 2, 0, 21 ]
]>, index := 120, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(22)) | [
[ 15, 5, 6, 5 ],
[ 3, 17, 17, 14 ],
[ 11, 21, 1, 2 ]
]>, gens := [
[ 15, 5, 6, 5 ],
[ 3, 17, 17, 14 ],
[ 11, 21, 1, 2 ]
], level := 22, entlevel := [ 2, 11 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(22)) | [
[ 15, 5, 6, 5 ],
[ 11, 21, 1, 2 ]
]>, label := ["GL2", "Remove"], NabG:=sub<GL(2,Integers(22)) | [
[ 13, 0, 2, 15 ],
[ 1, 11, 11, 12 ],
[ 1, 2, 0, 21 ]
]>, index := 120, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(22)) | [
[ 10, 9, 13, 3 ],
[ 8, 3, 21, 15 ],
[ 17, 18, 15, 3 ]
]>, gens := [
[ 10, 9, 13, 3 ],
[ 8, 3, 21, 15 ],
[ 17, 18, 15, 3 ]
], level := 22, entlevel := [ 2, 11 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(22)) | [
[ 10, 9, 13, 3 ],
[ 17, 18, 15, 3 ]
]>, label := ["GL2", "Remove"], NabG:=sub<GL(2,Integers(22)) | [
[ 1, 0, 20, 21 ],
[ 13, 4, 6, 15 ],
[ 15, 0, 16, 9 ],
[ 1, 11, 11, 12 ]
]>, index := 120, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(22)) | [
[ 2, 9, 19, 1 ],
[ 10, 9, 13, 3 ],
[ 17, 18, 15, 3 ]
]>, gens := [
[ 2, 9, 19, 1 ],
[ 10, 9, 13, 3 ],
[ 17, 18, 15, 3 ]
], level := 22, entlevel := [ 2, 11 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(22)) | [
[ 10, 9, 13, 3 ],
[ 17, 18, 15, 3 ]
]>, label := ["GL2", "Remove"], NabG:=sub<GL(2,Integers(22)) | [
[ 13, 4, 10, 19 ],
[ 1, 0, 20, 21 ],
[ 1, 11, 11, 12 ],
[ 15, 0, 8, 1 ]
]>, index := 120, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(22)) | [
[ 11, 21, 17, 18 ],
[ 8, 9, 13, 12 ],
[ 9, 19, 3, 4 ]
]>, gens := [
[ 11, 21, 17, 18 ],
[ 8, 9, 13, 12 ],
[ 9, 19, 3, 4 ]
], level := 22, entlevel := [ 2, 11 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(22)) | [
[ 17, 5, 17, 18 ],
[ 8, 9, 13, 12 ]
]>, label := ["GL2", "Remove"], NabG:=sub<GL(2,Integers(22)) | [
[ 21, 20, 0, 1 ],
[ 1, 0, 12, 13 ],
[ 1, 11, 11, 12 ]
]>, index := 120, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(22)) | [
[ 18, 15, 17, 9 ],
[ 10, 9, 13, 3 ],
[ 17, 18, 15, 3 ]
]>, gens := [
[ 18, 15, 17, 9 ],
[ 10, 9, 13, 3 ],
[ 17, 18, 15, 3 ]
], level := 22, entlevel := [ 2, 11 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(22)) | [
[ 10, 9, 13, 3 ],
[ 17, 18, 15, 3 ]
]>, label := ["GL2", "Remove"], NabG:=sub<GL(2,Integers(22)) | [
[ 1, 0, 20, 21 ],
[ 13, 4, 16, 3 ],
[ 12, 11, 11, 1 ],
[ 15, 0, 12, 5 ]
]>, index := 120, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(22)) | [
[ 14, 17, 5, 2 ],
[ 9, 15, 7, 12 ],
[ 5, 15, 13, 14 ]
]>, gens := [
[ 14, 17, 5, 2 ],
[ 9, 15, 7, 12 ],
[ 5, 15, 13, 14 ]
], level := 22, entlevel := [ 2, 11 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(22)) | [
[ 2, 5, 5, 2 ],
[ 13, 19, 7, 12 ]
]>, label := ["GL2", "Remove"], NabG:=sub<GL(2,Integers(22)) | [
[ 13, 4, 2, 11 ],
[ 1, 0, 18, 19 ],
[ 15, 0, 16, 9 ],
[ 12, 11, 11, 1 ]
]>, index := 24, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(22)) | [
[ 21, 15, 21, 16 ],
[ 3, 5, 17, 4 ],
[ 1, 15, 18, 15 ]
]>, gens := [
[ 21, 15, 21, 16 ],
[ 3, 5, 17, 4 ],
[ 1, 15, 18, 15 ]
], level := 22, entlevel := [ 2, 11 ], enttype := ["C2", "C2"], H:=sub<SL(2,Integers(22)) | [
[ 14, 19, 21, 16 ],
[ 21, 1, 17, 4 ]
]>, label := ["GL2", "Remove"], NabG:=sub<GL(2,Integers(22)) | [
[ 13, 0, 18, 9 ],
[ 1, 0, 2, 3 ],
[ 1, 11, 11, 12 ],
[ 1, 2, 0, 21 ]
]>, index := 24, jInvs := [], containsmI := false, explained := false, EntInKerOfIsog := false >];
Genus1r0[<[ 2, 13 ], ["C2", "C1"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(26)) | [
[ 9, 13, 23, 22 ],
[ 12, 13, 17, 6 ],
[ 14, 13, 1, 1 ],
[ 4, 13, 15, 6 ]
]>, gens := [
[ 9, 13, 23, 22 ],
[ 12, 13, 17, 6 ],
[ 14, 13, 1, 1 ],
[ 4, 13, 15, 6 ]
], level := 26, entlevel := [ 2, 13 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(26)) | [
[ 14, 13, 1, 1 ],
[ 3, 13, 23, 22 ]
]>, label := ["GL2", "13B.4.2"], NabG:=sub<GL(2,Integers(26)) | [
[ 1, 13, 13, 14 ],
[ 1, 0, 0, 25 ],
[ 1, 0, 24, 9 ],
[ 3, 0, 0, 1 ]
]>, index := 112, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(26)) | [
[ 20, 13, 7, 22 ],
[ 19, 13, 18, 1 ],
[ 14, 13, 23, 1 ],
[ 3, 13, 7, 16 ]
]>, gens := [
[ 20, 13, 7, 22 ],
[ 19, 13, 18, 1 ],
[ 14, 13, 23, 1 ],
[ 3, 13, 7, 16 ]
], level := 26, entlevel := [ 2, 13 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(26)) | [
[ 3, 13, 7, 22 ],
[ 1, 0, 18, 1 ],
[ 14, 13, 23, 1 ]
]>, label := ["GL2", "13B.4.1"], NabG:=sub<GL(2,Integers(26)) | [
[ 14, 13, 13, 1 ],
[ 1, 0, 24, 3 ],
[ 1, 0, 2, 3 ],
[ 17, 0, 0, 1 ]
]>, index := 112, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(26)) | [
[ 1, 13, 19, 14 ],
[ 9, 13, 7, 22 ],
[ 22, 13, 11, 24 ]
]>, gens := [
[ 1, 13, 19, 14 ],
[ 9, 13, 7, 22 ],
[ 22, 13, 11, 24 ]
], level := 26, entlevel := [ 2, 13 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(26)) | [
[ 3, 13, 7, 22 ],
[ 1, 13, 19, 14 ]
]>, label := ["GL2", "13B.4.2"], NabG:=sub<GL(2,Integers(26)) | [
[ 14, 13, 13, 1 ],
[ 1, 0, 0, 25 ],
[ 3, 0, 0, 1 ],
[ 1, 0, 14, 17 ]
]>, index := 112, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(26)) | [
[ 1, 13, 19, 14 ],
[ 11, 0, 3, 23 ],
[ 24, 13, 5, 4 ],
[ 16, 13, 19, 3 ]
]>, gens := [
[ 1, 13, 19, 14 ],
[ 11, 0, 3, 23 ],
[ 24, 13, 5, 4 ],
[ 16, 13, 19, 3 ]
], level := 26, entlevel := [ 2, 13 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(26)) | [
[ 1, 13, 19, 14 ],
[ 22, 13, 19, 3 ]
]>, label := ["GL2", "13B.4.1"], NabG:=sub<GL(2,Integers(26)) | [
[ 1, 0, 4, 3 ],
[ 1, 0, 16, 3 ],
[ 1, 13, 13, 14 ],
[ 17, 0, 0, 1 ]
]>, index := 112, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(26)) | [
[ 17, 0, 8, 17 ],
[ 15, 0, 19, 9 ],
[ 23, 13, 9, 10 ],
[ 7, 0, 13, 9 ]
]>, gens := [
[ 17, 0, 8, 17 ],
[ 15, 0, 19, 9 ],
[ 23, 13, 9, 10 ],
[ 7, 0, 13, 9 ]
], level := 26, entlevel := [ 2, 13 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(26)) | [
[ 23, 0, 8, 17 ],
[ 16, 13, 19, 9 ]
]>, label := ["GL2", "13B.4.1"], NabG:=sub<GL(2,Integers(26)) | [
[ 1, 0, 10, 3 ],
[ 1, 13, 13, 14 ],
[ 1, 0, 0, 25 ],
[ 17, 0, 0, 1 ],
[ 1, 0, 10, 25 ]
]>, index := 56, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(26)) | [
[ 1, 0, 7, 19 ],
[ 23, 0, 18, 23 ],
[ 17, 13, 23, 4 ]
]>, gens := [
[ 1, 0, 7, 19 ],
[ 23, 0, 18, 23 ],
[ 17, 13, 23, 4 ]
], level := 26, entlevel := [ 2, 13 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(26)) | [
[ 17, 0, 18, 23 ],
[ 23, 13, 23, 4 ]
]>, label := ["GL2", "13B.4.2"], NabG:=sub<GL(2,Integers(26)) | [
[ 14, 13, 13, 1 ],
[ 1, 0, 12, 17 ],
[ 1, 0, 0, 25 ],
[ 17, 0, 0, 1 ]
]>, index := 56, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(26)) | [
[ 15, 13, 21, 2 ],
[ 16, 13, 13, 20 ],
[ 19, 13, 9, 6 ]
]>, gens := [
[ 15, 13, 21, 2 ],
[ 16, 13, 13, 20 ],
[ 19, 13, 9, 6 ]
], level := 26, entlevel := [ 2, 13 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(26)) | [
[ 7, 13, 21, 2 ],
[ 15, 13, 13, 20 ]
]>, label := ["GL2", "13B"], NabG:=sub<GL(2,Integers(26)) | [
[ 1, 13, 13, 14 ],
[ 1, 0, 0, 25 ],
[ 15, 0, 8, 15 ],
[ 1, 0, 14, 17 ]
]>, index := 28, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >];
Genus1r0[<[ 3, 5 ], ["C2", "C1"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 10, 6, 7, 4 ],
[ 11, 6, 6, 7 ],
[ 13, 6, 1, 4 ]
]>, gens := [
[ 10, 6, 7, 4 ],
[ 11, 6, 6, 7 ],
[ 13, 6, 1, 4 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 13, 6, 1, 4 ]
]>, label := ["3B", "5B.4.2"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 0, 10, 1 ],
[ 13, 6, 6, 4 ],
[ 7, 0, 3, 1 ]
]>, index := 192, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 10, 9, 2, 13 ],
[ 1, 6, 6, 2 ],
[ 7, 3, 8, 10 ]
]>, gens := [
[ 10, 9, 2, 13 ],
[ 1, 6, 6, 2 ],
[ 7, 3, 8, 10 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 7, 3, 8, 10 ]
]>, label := ["3B", "5B.4.2"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 6, 0, 4 ],
[ 7, 0, 3, 1 ],
[ 1, 0, 5, 1 ]
]>, index := 192, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 11, 6, 6, 7 ],
[ 10, 9, 13, 1 ],
[ 13, 6, 1, 4 ]
]>, gens := [
[ 11, 6, 6, 7 ],
[ 10, 9, 13, 1 ],
[ 13, 6, 1, 4 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 13, 6, 1, 4 ]
]>, label := ["3B", "5B.4.2"], NabG:=sub<GL(2,Integers(15)) | [
[ 7, 3, 3, 10 ],
[ 7, 0, 9, 4 ],
[ 1, 0, 5, 1 ]
]>, index := 192, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 1, 6, 11, 2 ],
[ 10, 6, 13, 7 ],
[ 7, 3, 8, 10 ]
]>, gens := [
[ 1, 6, 11, 2 ],
[ 10, 6, 13, 7 ],
[ 7, 3, 8, 10 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 7, 3, 8, 10 ]
]>, label := ["3B", "5B.4.2"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 0, 10, 1 ],
[ 10, 3, 12, 10 ],
[ 7, 0, 9, 4 ]
]>, index := 192, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 2, 4, 0, 14 ],
[ 7, 8, 3, 10 ],
[ 2, 3, 3, 10 ]
]>, gens := [
[ 2, 4, 0, 14 ],
[ 7, 8, 3, 10 ],
[ 2, 3, 3, 10 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 1, 10, 0, 1 ],
[ 7, 8, 3, 10 ]
]>, label := ["3B", "5B.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 11, 0, 0, 1 ],
[ 1, 10, 0, 1 ],
[ 1, 0, 6, 4 ],
[ 7, 3, 9, 13 ]
]>, index := 192, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 4, 14, 3, 10 ],
[ 8, 12, 12, 10 ],
[ 13, 1, 6, 4 ]
]>, gens := [
[ 4, 14, 3, 10 ],
[ 8, 12, 12, 10 ],
[ 13, 1, 6, 4 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 1, 5, 0, 1 ],
[ 7, 8, 3, 10 ]
]>, label := ["3B", "5B.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 13, 6, 0, 1 ],
[ 1, 10, 0, 1 ],
[ 1, 0, 9, 13 ]
]>, index := 192, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 4, 4, 9, 13 ],
[ 2, 4, 0, 14 ],
[ 7, 3, 3, 5 ]
]>, gens := [
[ 4, 4, 9, 13 ],
[ 2, 4, 0, 14 ],
[ 7, 3, 3, 5 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 4, 4, 9, 13 ],
[ 1, 5, 0, 1 ]
]>, label := ["3B", "5B.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 7, 3, 3, 10 ],
[ 1, 0, 6, 4 ],
[ 1, 10, 0, 11 ],
[ 1, 0, 0, 11 ]
]>, index := 192, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 4, 14, 3, 10 ],
[ 13, 12, 12, 5 ],
[ 13, 1, 6, 4 ]
]>, gens := [
[ 4, 14, 3, 10 ],
[ 13, 12, 12, 5 ],
[ 13, 1, 6, 4 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 1, 5, 0, 1 ],
[ 7, 8, 3, 10 ]
]>, label := ["3B", "5B.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 10, 0, 1 ],
[ 1, 0, 6, 4 ],
[ 1, 0, 12, 7 ],
[ 10, 12, 3, 10 ]
]>, index := 192, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 13, 11, 6, 4 ],
[ 8, 12, 12, 10 ],
[ 7, 14, 0, 4 ]
]>, gens := [
[ 13, 11, 6, 4 ],
[ 8, 12, 12, 10 ],
[ 7, 14, 0, 4 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 13, 11, 6, 4 ],
[ 1, 5, 0, 1 ]
]>, label := ["3B", "5B.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 5, 0, 1 ],
[ 4, 0, 3, 13 ],
[ 4, 9, 9, 13 ],
[ 1, 0, 6, 4 ]
]>, index := 192, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 7, 8, 3, 10 ],
[ 2, 3, 3, 10 ],
[ 8, 1, 0, 11 ]
]>, gens := [
[ 7, 8, 3, 10 ],
[ 2, 3, 3, 10 ],
[ 8, 1, 0, 11 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 1, 5, 0, 1 ],
[ 7, 8, 3, 10 ]
]>, label := ["3B", "5B.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 4, 9, 0, 1 ],
[ 11, 0, 0, 1 ],
[ 1, 10, 0, 1 ],
[ 1, 0, 6, 4 ]
]>, index := 192, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 13, 11, 6, 4 ],
[ 7, 3, 3, 5 ],
[ 8, 1, 0, 11 ]
]>, gens := [
[ 13, 11, 6, 4 ],
[ 7, 3, 3, 5 ],
[ 8, 1, 0, 11 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 13, 11, 6, 4 ],
[ 1, 5, 0, 1 ]
]>, label := ["3B", "5B.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 13, 6, 12, 7 ],
[ 1, 10, 0, 1 ],
[ 1, 0, 6, 4 ],
[ 1, 0, 0, 11 ]
]>, index := 192, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 5, 12, 7, 7 ],
[ 13, 6, 1, 4 ],
[ 2, 12, 8, 2 ]
]>, gens := [
[ 5, 12, 7, 7 ],
[ 13, 6, 1, 4 ],
[ 2, 12, 8, 2 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 10, 12, 7, 7 ]
]>, label := ["3B", "5B.4.2"], NabG:=sub<GL(2,Integers(15)) | [
[ 4, 0, 9, 1 ],
[ 13, 6, 6, 4 ],
[ 11, 0, 0, 1 ],
[ 1, 0, 5, 1 ]
]>, index := 192, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 7, 3, 13, 5 ],
[ 8, 3, 11, 5 ],
[ 10, 12, 7, 7 ]
]>, gens := [
[ 7, 3, 13, 5 ],
[ 8, 3, 11, 5 ],
[ 10, 12, 7, 7 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 10, 12, 7, 7 ]
]>, label := ["3B", "5B.4.2"], NabG:=sub<GL(2,Integers(15)) | [
[ 4, 0, 9, 1 ],
[ 10, 3, 12, 10 ],
[ 1, 0, 10, 11 ],
[ 1, 0, 0, 11 ]
]>, index := 192, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 4, 4, 9, 13 ],
[ 13, 12, 12, 5 ],
[ 7, 14, 0, 4 ]
]>, gens := [
[ 4, 4, 9, 13 ],
[ 13, 12, 12, 5 ],
[ 7, 14, 0, 4 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 4, 4, 9, 13 ],
[ 1, 10, 0, 1 ]
]>, label := ["3B", "5B.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 4, 0, 6, 7 ],
[ 1, 10, 0, 1 ],
[ 4, 9, 9, 13 ],
[ 1, 0, 6, 4 ]
]>, index := 192, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 8, 3, 2, 8 ],
[ 5, 12, 7, 7 ],
[ 13, 6, 1, 4 ]
]>, gens := [
[ 8, 3, 2, 8 ],
[ 5, 12, 7, 7 ],
[ 13, 6, 1, 4 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 10, 12, 7, 7 ]
]>, label := ["3B", "5B.4.2"], NabG:=sub<GL(2,Integers(15)) | [
[ 4, 0, 9, 1 ],
[ 11, 0, 0, 1 ],
[ 1, 0, 5, 1 ],
[ 13, 12, 6, 7 ]
]>, index := 192, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 7, 3, 13, 5 ],
[ 2, 12, 14, 5 ],
[ 10, 12, 7, 7 ]
]>, gens := [
[ 7, 3, 13, 5 ],
[ 2, 12, 14, 5 ],
[ 10, 12, 7, 7 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 10, 12, 7, 7 ]
]>, label := ["3B", "5B.4.2"], NabG:=sub<GL(2,Integers(15)) | [
[ 7, 3, 3, 10 ],
[ 4, 0, 9, 1 ],
[ 1, 0, 10, 11 ],
[ 1, 0, 0, 11 ]
]>, index := 192, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 11, 6, 11, 7 ],
[ 2, 3, 13, 5 ],
[ 11, 9, 1, 11 ]
]>, gens := [
[ 11, 6, 11, 7 ],
[ 2, 3, 13, 5 ],
[ 11, 9, 1, 11 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 2, 3, 13, 5 ]
]>, label := ["3B", "5B.4.2"], NabG:=sub<GL(2,Integers(15)) | [
[ 7, 0, 9, 4 ],
[ 1, 0, 5, 1 ],
[ 11, 0, 0, 11 ],
[ 13, 12, 6, 7 ]
]>, index := 96, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 8, 11, 6, 14 ],
[ 8, 12, 12, 10 ],
[ 7, 14, 0, 4 ]
]>, gens := [
[ 8, 11, 6, 14 ],
[ 8, 12, 12, 10 ],
[ 7, 14, 0, 4 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 1, 10, 0, 1 ],
[ 8, 11, 6, 14 ]
]>, label := ["3B", "5B.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 4, 0, 6, 7 ],
[ 1, 0, 6, 4 ],
[ 11, 0, 0, 11 ],
[ 11, 10, 0, 11 ],
[ 10, 12, 3, 10 ]
]>, index := 96, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 5, 9, 13, 11 ],
[ 1, 6, 1, 7 ],
[ 13, 12, 7, 5 ]
]>, gens := [
[ 5, 9, 13, 11 ],
[ 1, 6, 1, 7 ],
[ 13, 12, 7, 5 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 1, 6, 1, 7 ]
]>, label := ["3B", "5B.4.2"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 0, 5, 11 ],
[ 4, 0, 9, 1 ],
[ 1, 0, 10, 11 ],
[ 1, 0, 6, 4 ],
[ 10, 3, 3, 13 ]
]>, index := 96, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 2, 3, 3, 10 ],
[ 1, 1, 6, 7 ],
[ 8, 1, 0, 11 ]
]>, gens := [
[ 2, 3, 3, 10 ],
[ 1, 1, 6, 7 ],
[ 8, 1, 0, 11 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 1, 5, 0, 1 ],
[ 7, 8, 3, 10 ],
[ 1, 1, 6, 7 ]
]>, label := ["3B", "5B.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 11, 0, 0, 1 ],
[ 11, 10, 0, 1 ],
[ 1, 0, 6, 4 ],
[ 4, 0, 0, 4 ],
[ 7, 9, 3, 13 ]
]>, index := 96, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 7, 3, 3, 5 ],
[ 13, 2, 12, 10 ],
[ 8, 1, 0, 11 ]
]>, gens := [
[ 7, 3, 3, 5 ],
[ 13, 2, 12, 10 ],
[ 8, 1, 0, 11 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 1, 10, 0, 1 ],
[ 13, 2, 12, 10 ]
]>, label := ["3B", "5B.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 5, 0, 1 ],
[ 1, 0, 6, 4 ],
[ 4, 0, 0, 4 ],
[ 13, 12, 12, 10 ],
[ 1, 0, 0, 11 ]
]>, index := 96, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 5, 12, 2, 7 ],
[ 1, 6, 11, 7 ],
[ 14, 6, 4, 14 ]
]>, gens := [
[ 5, 12, 2, 7 ],
[ 1, 6, 11, 7 ],
[ 14, 6, 4, 14 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 10, 12, 2, 7 ],
[ 1, 6, 11, 7 ]
]>, label := ["3B", "5B.4.2"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 0, 10, 1 ],
[ 11, 0, 0, 1 ],
[ 1, 0, 6, 4 ],
[ 10, 12, 12, 7 ],
[ 4, 0, 0, 4 ]
]>, index := 96, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 14, 4, 9, 8 ],
[ 8, 12, 12, 10 ],
[ 4, 4, 6, 4 ]
]>, gens := [
[ 14, 4, 9, 8 ],
[ 8, 12, 12, 10 ],
[ 4, 4, 6, 4 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 1, 10, 0, 1 ],
[ 14, 4, 9, 8 ]
]>, label := ["3B", "5B.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 4, 9, 6, 4 ],
[ 1, 10, 0, 1 ],
[ 11, 0, 0, 11 ],
[ 1, 0, 9, 13 ]
]>, index := 96, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 2, 3, 8, 5 ],
[ 13, 3, 11, 10 ],
[ 8, 12, 7, 10 ]
]>, gens := [
[ 2, 3, 8, 5 ],
[ 13, 3, 11, 10 ],
[ 8, 12, 7, 10 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 2, 3, 8, 5 ]
]>, label := ["3B", "5B.4.2"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 0, 10, 1 ],
[ 7, 0, 3, 1 ],
[ 11, 0, 0, 11 ],
[ 10, 6, 12, 4 ]
]>, index := 96, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 7, 2, 12, 4 ],
[ 13, 13, 3, 11 ],
[ 8, 1, 0, 11 ]
]>, gens := [
[ 7, 2, 12, 4 ],
[ 13, 13, 3, 11 ],
[ 8, 1, 0, 11 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 1, 9, 12, 4 ],
[ 13, 7, 12, 10 ],
[ 1, 10, 0, 1 ]
]>, label := ["3B", "5B"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 5, 0, 1 ],
[ 7, 0, 12, 13 ],
[ 1, 0, 6, 4 ],
[ 4, 3, 3, 7 ],
[ 1, 0, 0, 11 ]
]>, index := 48, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 1, 14, 9, 10 ],
[ 11, 4, 9, 10 ],
[ 8, 1, 0, 11 ]
]>, gens := [
[ 1, 14, 9, 10 ],
[ 11, 4, 9, 10 ],
[ 8, 1, 0, 11 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 1, 10, 0, 1 ],
[ 7, 4, 9, 1 ],
[ 10, 1, 9, 10 ]
]>, label := ["3B", "5B"], NabG:=sub<GL(2,Integers(15)) | [
[ 11, 0, 0, 1 ],
[ 11, 5, 0, 1 ],
[ 7, 0, 0, 7 ],
[ 1, 9, 9, 10 ],
[ 1, 0, 6, 4 ]
]>, index := 48, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 14, 9, 4, 11 ],
[ 8, 9, 2, 2 ],
[ 5, 12, 14, 5 ],
[ 4, 6, 13, 8 ]
]>, gens := [
[ 14, 9, 4, 11 ],
[ 8, 9, 2, 2 ],
[ 5, 12, 14, 5 ],
[ 4, 6, 13, 8 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 1, 3, 9, 13 ],
[ 13, 3, 10, 7 ]
]>, label := ["3B", "5S4"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 0, 5, 11 ],
[ 1, 0, 3, 4 ],
[ 1, 0, 10, 1 ],
[ 7, 0, 0, 7 ],
[ 7, 9, 9, 10 ]
]>, index := 40, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 14, 9, 13, 11 ],
[ 8, 12, 3, 10 ],
[ 14, 9, 4, 11 ],
[ 5, 12, 14, 5 ]
]>, gens := [
[ 14, 9, 13, 11 ],
[ 8, 12, 3, 10 ],
[ 14, 9, 4, 11 ],
[ 5, 12, 14, 5 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 4, 3, 3, 10 ],
[ 7, 12, 10, 13 ]
]>, label := ["3B", "5S4"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 0, 3, 4 ],
[ 11, 0, 0, 1 ],
[ 1, 3, 9, 1 ],
[ 1, 0, 5, 1 ],
[ 7, 0, 6, 13 ]
]>, index := 40, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 12, 8, 13, 0 ],
[ 0, 14, 4, 9 ],
[ 4, 1, 5, 7 ],
[ 8, 3, 3, 1 ]
]>, gens := [
[ 12, 8, 13, 0 ],
[ 0, 14, 4, 9 ],
[ 4, 1, 5, 7 ],
[ 8, 3, 3, 1 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 12, 8, 13, 0 ],
[ 6, 2, 4, 9 ]
]>, label := ["3Nn", "5B"], NabG:=sub<GL(2,Integers(15)) | [
[ 11, 0, 0, 1 ],
[ 7, 0, 0, 7 ],
[ 6, 10, 10, 6 ],
[ 1, 0, 6, 4 ],
[ 7, 9, 3, 13 ],
[ 1, 0, 0, 11 ]
]>, index := 36, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >];
Genus1r0[<[ 3, 5 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
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
Genus1r0[<[ 3, 5 ], ["C2^2", "C1"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 11, 6, 6, 7 ],
[ 5, 6, 2, 14 ],
[ 13, 6, 1, 4 ]
]>, gens := [
[ 11, 6, 6, 7 ],
[ 5, 6, 2, 14 ],
[ 13, 6, 1, 4 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2^2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 13, 6, 1, 4 ]
]>, label := ["3B", "5B.4.2"], NabG:=sub<GL(2,Integers(15)) | [
[ 4, 0, 9, 1 ],
[ 1, 0, 10, 1 ],
[ 1, 6, 0, 4 ]
]>, index := 192, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 5, 9, 7, 8 ],
[ 1, 6, 6, 2 ],
[ 7, 3, 8, 10 ]
]>, gens := [
[ 5, 9, 7, 8 ],
[ 1, 6, 6, 2 ],
[ 7, 3, 8, 10 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2^2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 7, 3, 8, 10 ]
]>, label := ["3B", "5B.4.2"], NabG:=sub<GL(2,Integers(15)) | [
[ 4, 0, 9, 1 ],
[ 1, 0, 10, 1 ],
[ 13, 12, 6, 7 ]
]>, index := 192, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 5, 9, 8, 11 ],
[ 11, 6, 6, 7 ],
[ 13, 6, 1, 4 ]
]>, gens := [
[ 5, 9, 8, 11 ],
[ 11, 6, 6, 7 ],
[ 13, 6, 1, 4 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2^2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 13, 6, 1, 4 ]
]>, label := ["3B", "5B.4.2"], NabG:=sub<GL(2,Integers(15)) | [
[ 4, 0, 9, 1 ],
[ 1, 0, 10, 1 ],
[ 1, 6, 0, 4 ]
]>, index := 192, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 1, 6, 11, 2 ],
[ 7, 3, 8, 10 ],
[ 5, 6, 8, 2 ]
]>, gens := [
[ 1, 6, 11, 2 ],
[ 7, 3, 8, 10 ],
[ 5, 6, 8, 2 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2^2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 7, 3, 8, 10 ]
]>, label := ["3B", "5B.4.2"], NabG:=sub<GL(2,Integers(15)) | [
[ 4, 0, 9, 1 ],
[ 1, 0, 10, 1 ],
[ 13, 12, 6, 7 ]
]>, index := 192, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 4, 4, 9, 13 ],
[ 8, 12, 12, 10 ],
[ 8, 1, 0, 11 ]
]>, gens := [
[ 4, 4, 9, 13 ],
[ 8, 12, 12, 10 ],
[ 8, 1, 0, 11 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2^2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 4, 4, 9, 13 ],
[ 1, 5, 0, 1 ]
]>, label := ["3B", "5B.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 7, 3, 3, 10 ],
[ 1, 10, 0, 1 ],
[ 1, 0, 6, 4 ]
]>, index := 192, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 4, 4, 9, 13 ],
[ 13, 12, 12, 5 ],
[ 8, 1, 0, 11 ]
]>, gens := [
[ 4, 4, 9, 13 ],
[ 13, 12, 12, 5 ],
[ 8, 1, 0, 11 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2^2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 4, 4, 9, 13 ],
[ 1, 10, 0, 1 ]
]>, label := ["3B", "5B.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 1, 10, 0, 1 ],
[ 1, 0, 6, 4 ],
[ 10, 12, 3, 10 ]
]>, index := 192, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 4, 4, 9, 13 ],
[ 2, 4, 0, 14 ],
[ 8, 12, 12, 10 ]
]>, gens := [
[ 4, 4, 9, 13 ],
[ 2, 4, 0, 14 ],
[ 8, 12, 12, 10 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2^2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 4, 4, 9, 13 ],
[ 1, 10, 0, 1 ]
]>, label := ["3B", "5B.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 13, 6, 6, 4 ],
[ 1, 10, 0, 1 ],
[ 1, 0, 6, 4 ]
]>, index := 192, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(15)) | [
[ 13, 11, 6, 4 ],
[ 13, 12, 12, 5 ],
[ 2, 4, 0, 14 ]
]>, gens := [
[ 13, 11, 6, 4 ],
[ 13, 12, 12, 5 ],
[ 2, 4, 0, 14 ]
], level := 15, entlevel := [ 3, 5 ], enttype := ["C2^2", "C1"], H:=sub<SL(2,Integers(15)) | [
[ 13, 11, 6, 4 ],
[ 1, 5, 0, 1 ]
]>, label := ["3B", "5B.4.1"], NabG:=sub<GL(2,Integers(15)) | [
[ 13, 6, 6, 4 ],
[ 1, 10, 0, 1 ],
[ 1, 0, 6, 4 ]
]>, index := 192, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >];
Genus1r0[<[ 3, 7 ], ["C2", "C1"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 8, 6, 8, 10 ],
[ 2, 12, 9, 13 ],
[ 19, 18, 19, 20 ]
]>, gens := [
[ 8, 6, 8, 10 ],
[ 2, 12, 9, 13 ],
[ 19, 18, 19, 20 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 10, 15, 8, 10 ],
[ 7, 3, 9, 13 ]
]>, label := ["3B", "7B"], NabG:=sub<GL(2,Integers(21)) | [
[ 1, 0, 15, 16 ],
[ 8, 0, 0, 1 ],
[ 16, 0, 9, 4 ],
[ 1, 0, 7, 1 ],
[ 16, 15, 9, 10 ]
]>, index := 128, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 5, 15, 5, 16 ],
[ 19, 15, 13, 17 ],
[ 14, 6, 17, 4 ],
[ 10, 6, 8, 5 ]
]>, gens := [
[ 5, 15, 5, 16 ],
[ 19, 15, 13, 17 ],
[ 14, 6, 17, 4 ],
[ 10, 6, 8, 5 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 4, 0, 5, 16 ],
[ 19, 18, 17, 4 ]
]>, label := ["3B", "7B"], NabG:=sub<GL(2,Integers(21)) | [
[ 1, 0, 7, 8 ],
[ 1, 0, 15, 16 ],
[ 4, 3, 12, 13 ],
[ 1, 0, 14, 8 ],
[ 16, 0, 9, 4 ]
]>, index := 128, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 2, 6, 2, 19 ],
[ 14, 15, 18, 17 ],
[ 7, 12, 16, 11 ],
[ 10, 6, 8, 5 ]
]>, gens := [
[ 2, 6, 2, 19 ],
[ 14, 15, 18, 17 ],
[ 7, 12, 16, 11 ],
[ 10, 6, 8, 5 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 4, 9, 0, 16 ],
[ 10, 9, 12, 13 ],
[ 19, 18, 17, 4 ]
]>, label := ["3B", "7B"], NabG:=sub<GL(2,Integers(21)) | [
[ 1, 0, 7, 8 ],
[ 1, 0, 15, 16 ],
[ 16, 0, 0, 16 ],
[ 19, 3, 18, 13 ],
[ 1, 0, 0, 8 ]
]>, index := 128, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 13, 3, 11, 14 ],
[ 7, 9, 19, 17 ],
[ 4, 12, 20, 5 ],
[ 1, 18, 9, 13 ]
]>, gens := [
[ 13, 3, 11, 14 ],
[ 7, 9, 19, 17 ],
[ 4, 12, 20, 5 ],
[ 1, 18, 9, 13 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 1, 6, 3, 19 ],
[ 1, 0, 7, 1 ],
[ 7, 3, 9, 13 ]
]>, label := ["3B", "7B"], NabG:=sub<GL(2,Integers(21)) | [
[ 16, 12, 15, 19 ],
[ 1, 0, 18, 19 ],
[ 1, 0, 14, 1 ],
[ 16, 0, 18, 13 ]
]>, index := 128, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 11, 12, 13, 19 ],
[ 14, 9, 19, 10 ],
[ 20, 15, 20, 4 ],
[ 8, 18, 9, 13 ]
]>, gens := [
[ 11, 12, 13, 19 ],
[ 14, 9, 19, 10 ],
[ 20, 15, 20, 4 ],
[ 8, 18, 9, 13 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 1, 6, 10, 19 ],
[ 10, 9, 12, 13 ],
[ 7, 3, 9, 13 ]
]>, label := ["3B", "7B"], NabG:=sub<GL(2,Integers(21)) | [
[ 1, 0, 3, 4 ],
[ 10, 0, 12, 1 ],
[ 1, 0, 14, 1 ],
[ 7, 18, 15, 4 ]
]>, index := 128, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 7, 18, 10, 20 ],
[ 1, 18, 9, 20 ],
[ 4, 12, 20, 5 ],
[ 7, 9, 12, 17 ]
]>, gens := [
[ 7, 18, 10, 20 ],
[ 1, 18, 9, 20 ],
[ 4, 12, 20, 5 ],
[ 7, 9, 12, 17 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 10, 6, 20, 10 ],
[ 7, 12, 18, 13 ]
]>, label := ["3B", "7B"], NabG:=sub<GL(2,Integers(21)) | [
[ 10, 0, 15, 4 ],
[ 1, 0, 3, 4 ],
[ 10, 18, 12, 4 ],
[ 1, 0, 7, 1 ]
]>, index := 128, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 8, 6, 8, 10 ],
[ 16, 3, 16, 8 ],
[ 20, 18, 10, 19 ]
]>, gens := [
[ 8, 6, 8, 10 ],
[ 16, 3, 16, 8 ],
[ 20, 18, 10, 19 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 1, 6, 10, 19 ],
[ 10, 15, 8, 10 ]
]>, label := ["3B", "7B"], NabG:=sub<GL(2,Integers(21)) | [
[ 1, 0, 3, 4 ],
[ 10, 15, 15, 10 ],
[ 16, 0, 0, 16 ],
[ 1, 0, 14, 1 ],
[ 8, 0, 0, 1 ]
]>, index := 128, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 14, 18, 17, 13 ],
[ 11, 12, 13, 19 ],
[ 14, 9, 12, 10 ],
[ 1, 18, 9, 13 ]
]>, gens := [
[ 14, 18, 17, 13 ],
[ 11, 12, 13, 19 ],
[ 14, 9, 12, 10 ],
[ 1, 18, 9, 13 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 10, 6, 20, 10 ],
[ 7, 12, 18, 13 ],
[ 7, 3, 9, 13 ]
]>, label := ["3B", "7B"], NabG:=sub<GL(2,Integers(21)) | [
[ 16, 0, 0, 16 ],
[ 1, 0, 14, 1 ],
[ 1, 0, 9, 10 ],
[ 1, 18, 18, 1 ]
]>, index := 128, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 17, 12, 9, 7 ],
[ 11, 12, 13, 19 ],
[ 5, 18, 10, 11 ],
[ 1, 18, 9, 13 ]
]>, gens := [
[ 17, 12, 9, 7 ],
[ 11, 12, 13, 19 ],
[ 5, 18, 10, 11 ],
[ 1, 18, 9, 13 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 5, 18, 10, 11 ],
[ 7, 3, 9, 13 ]
]>, label := ["3B", "7B"], NabG:=sub<GL(2,Integers(21)) | [
[ 1, 0, 12, 13 ],
[ 1, 0, 14, 1 ],
[ 16, 0, 18, 13 ],
[ 1, 0, 9, 10 ],
[ 10, 15, 3, 19 ],
[ 8, 0, 7, 8 ]
]>, index := 64, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 13, 3, 4, 14 ],
[ 16, 12, 2, 20 ],
[ 8, 18, 9, 20 ],
[ 1, 12, 9, 19 ],
[ 4, 12, 20, 19 ]
]>, gens := [
[ 13, 3, 4, 14 ],
[ 16, 12, 2, 20 ],
[ 8, 18, 9, 20 ],
[ 1, 12, 9, 19 ],
[ 4, 12, 20, 19 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 10, 0, 9, 19 ],
[ 7, 15, 20, 19 ]
]>, label := ["3B", "7B"], NabG:=sub<GL(2,Integers(21)) | [
[ 1, 0, 3, 4 ],
[ 10, 0, 3, 13 ],
[ 4, 12, 9, 1 ],
[ 1, 0, 0, 8 ],
[ 1, 0, 7, 1 ]
]>, index := 64, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 8, 18, 9, 20 ],
[ 16, 3, 11, 10 ],
[ 19, 9, 19, 1 ],
[ 4, 12, 20, 19 ],
[ 11, 15, 20, 16 ]
]>, gens := [
[ 8, 18, 9, 20 ],
[ 16, 3, 11, 10 ],
[ 19, 9, 19, 1 ],
[ 4, 12, 20, 19 ],
[ 11, 15, 20, 16 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 16, 3, 11, 10 ],
[ 7, 18, 19, 1 ]
]>, label := ["3B", "7B"], NabG:=sub<GL(2,Integers(21)) | [
[ 1, 0, 15, 16 ],
[ 4, 15, 15, 4 ],
[ 10, 0, 0, 10 ],
[ 1, 0, 14, 1 ],
[ 8, 0, 0, 1 ]
]>, index := 64, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 11, 12, 13, 19 ],
[ 20, 12, 16, 17 ],
[ 11, 9, 5, 14 ],
[ 8, 18, 9, 13 ],
[ 8, 3, 4, 16 ]
]>, gens := [
[ 11, 12, 13, 19 ],
[ 20, 12, 16, 17 ],
[ 11, 9, 5, 14 ],
[ 8, 18, 9, 13 ],
[ 8, 3, 4, 16 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 20, 18, 5, 14 ],
[ 20, 12, 16, 17 ]
]>, label := ["3B", "7B"], NabG:=sub<GL(2,Integers(21)) | [
[ 10, 0, 15, 4 ],
[ 1, 0, 15, 16 ],
[ 7, 9, 15, 13 ],
[ 1, 0, 14, 1 ],
[ 8, 0, 7, 8 ]
]>, index := 64, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 3, 7, 7, 10 ],
[ 0, 4, 4, 14 ],
[ 7, 11, 1, 7 ],
[ 7, 16, 8, 7 ]
]>, gens := [
[ 3, 7, 7, 10 ],
[ 0, 4, 4, 14 ],
[ 7, 11, 1, 7 ],
[ 7, 16, 8, 7 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 1, 7, 0, 1 ],
[ 4, 7, 7, 2 ]
]>, label := ["GL3", "Remove"], NabG:=sub<GL(2,Integers(21)) | [
[ 1, 0, 0, 16 ],
[ 1, 0, 14, 1 ],
[ 16, 0, 0, 1 ],
[ 8, 0, 14, 8 ],
[ 15, 14, 7, 8 ],
[ 7, 6, 3, 7 ]
]>, index := 112, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 6, 1, 4, 16 ],
[ 4, 1, 11, 7 ],
[ 20, 1, 11, 2 ]
]>, gens := [
[ 6, 1, 4, 16 ],
[ 4, 1, 11, 7 ],
[ 20, 1, 11, 2 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 1, 7, 0, 1 ],
[ 19, 1, 4, 8 ]
]>, label := ["GL3", "Remove"], NabG:=sub<GL(2,Integers(21)) | [
[ 16, 0, 0, 16 ],
[ 1, 0, 14, 1 ],
[ 8, 0, 0, 8 ],
[ 16, 15, 18, 19 ],
[ 10, 9, 15, 16 ],
[ 15, 7, 14, 8 ]
]>, index := 112, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 4, 11, 4, 1 ],
[ 19, 12, 12, 17 ],
[ 2, 7, 2, 5 ],
[ 4, 4, 4, 15 ]
]>, gens := [
[ 4, 11, 4, 1 ],
[ 19, 12, 12, 17 ],
[ 2, 7, 2, 5 ],
[ 4, 4, 4, 15 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 1, 7, 0, 1 ],
[ 19, 4, 4, 2 ]
]>, label := ["GL3", "Remove"], NabG:=sub<GL(2,Integers(21)) | [
[ 10, 0, 0, 10 ],
[ 4, 12, 6, 10 ],
[ 1, 0, 14, 1 ],
[ 8, 0, 0, 8 ],
[ 1, 7, 7, 8 ],
[ 1, 12, 12, 13 ]
]>, index := 84, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >];
Genus1r0[<[ 3, 7 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
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
Genus1r0[<[ 3, 7 ], ["C2^2", "C1"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 8, 18, 9, 20 ],
[ 11, 12, 13, 19 ],
[ 20, 15, 13, 4 ],
[ 11, 6, 15, 13 ]
]>, gens := [
[ 8, 18, 9, 20 ],
[ 11, 12, 13, 19 ],
[ 20, 15, 13, 4 ],
[ 11, 6, 15, 13 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2^2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 4, 9, 0, 16 ],
[ 10, 9, 12, 13 ],
[ 10, 15, 8, 10 ]
]>, label := ["3B", "7B"], NabG:=sub<GL(2,Integers(21)) | [
[ 1, 0, 15, 16 ],
[ 16, 0, 0, 16 ],
[ 1, 0, 14, 1 ],
[ 13, 9, 9, 13 ]
]>, index := 128, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 8, 18, 9, 20 ],
[ 4, 15, 6, 2 ],
[ 1, 12, 2, 5 ],
[ 4, 12, 20, 5 ]
]>, gens := [
[ 8, 18, 9, 20 ],
[ 4, 15, 6, 2 ],
[ 1, 12, 2, 5 ],
[ 4, 12, 20, 5 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2^2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 4, 9, 0, 16 ],
[ 1, 6, 10, 19 ],
[ 10, 15, 15, 10 ]
]>, label := ["3B", "7B"], NabG:=sub<GL(2,Integers(21)) | [
[ 1, 0, 3, 4 ],
[ 16, 0, 6, 1 ],
[ 4, 3, 12, 13 ],
[ 1, 0, 7, 1 ]
]>, index := 128, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 1, 12, 16, 5 ],
[ 4, 12, 20, 5 ],
[ 4, 15, 20, 2 ],
[ 8, 18, 9, 13 ]
]>, gens := [
[ 1, 12, 16, 5 ],
[ 4, 12, 20, 5 ],
[ 4, 15, 20, 2 ],
[ 8, 18, 9, 13 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2^2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 7, 3, 9, 13 ],
[ 13, 9, 17, 7 ]
]>, label := ["3B", "7B"], NabG:=sub<GL(2,Integers(21)) | [
[ 1, 0, 3, 4 ],
[ 19, 18, 6, 7 ],
[ 16, 0, 6, 1 ],
[ 1, 0, 7, 1 ]
]>, index := 128, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 11, 12, 13, 19 ],
[ 1, 18, 9, 20 ],
[ 14, 9, 12, 10 ],
[ 8, 3, 11, 16 ]
]>, gens := [
[ 11, 12, 13, 19 ],
[ 1, 18, 9, 20 ],
[ 14, 9, 12, 10 ],
[ 8, 3, 11, 16 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2^2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 10, 9, 12, 13 ],
[ 7, 12, 11, 13 ],
[ 13, 18, 19, 7 ]
]>, label := ["3B", "7B"], NabG:=sub<GL(2,Integers(21)) | [
[ 1, 0, 15, 16 ],
[ 16, 0, 6, 1 ],
[ 1, 0, 14, 1 ],
[ 1, 18, 0, 4 ]
]>, index := 128, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >];
Genus1r0[<[ 3, 11 ], ["C2", "C1"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(33)) | [
[ 27, 10, 31, 26 ],
[ 11, 5, 13, 20 ],
[ 26, 2, 7, 32 ],
[ 3, 20, 8, 28 ]
]>, gens := [
[ 27, 10, 31, 26 ],
[ 11, 5, 13, 20 ],
[ 26, 2, 7, 32 ],
[ 3, 20, 8, 28 ]
], level := 33, entlevel := [ 3, 11 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(33)) | [
[ 21, 23, 7, 3 ],
[ 1, 22, 0, 1 ]
]>, label := ["GL3", "Remove"], NabG:=sub<GL(2,Integers(33)) | [
[ 13, 0, 9, 25 ],
[ 23, 0, 22, 23 ],
[ 13, 12, 30, 22 ],
[ 1, 11, 0, 1 ],
[ 1, 0, 11, 1 ]
]>, index := 120, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(33)) | [
[ 15, 14, 32, 16 ],
[ 11, 10, 13, 30 ],
[ 17, 2, 25, 14 ],
[ 14, 29, 8, 24 ]
]>, gens := [
[ 15, 14, 32, 16 ],
[ 11, 10, 13, 30 ],
[ 17, 2, 25, 14 ],
[ 14, 29, 8, 24 ]
], level := 33, entlevel := [ 3, 11 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(33)) | [
[ 1, 11, 0, 1 ],
[ 13, 5, 2, 11 ]
]>, label := ["GL3", "Remove"], NabG:=sub<GL(2,Integers(33)) | [
[ 7, 27, 12, 22 ],
[ 23, 0, 11, 23 ],
[ 13, 0, 24, 1 ],
[ 1, 0, 22, 1 ],
[ 12, 11, 22, 12 ]
]>, index := 120, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(33)) | [
[ 15, 19, 16, 23 ],
[ 11, 5, 13, 20 ],
[ 23, 17, 10, 8 ],
[ 3, 20, 8, 28 ]
]>, gens := [
[ 15, 19, 16, 23 ],
[ 11, 5, 13, 20 ],
[ 23, 17, 10, 8 ],
[ 3, 20, 8, 28 ]
], level := 33, entlevel := [ 3, 11 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(33)) | [
[ 21, 23, 7, 3 ],
[ 1, 11, 0, 1 ]
]>, label := ["GL3", "Remove"], NabG:=sub<GL(2,Integers(33)) | [
[ 23, 0, 11, 23 ],
[ 13, 0, 18, 4 ],
[ 16, 24, 24, 19 ],
[ 23, 11, 22, 12 ],
[ 1, 0, 11, 1 ]
]>, index := 120, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(33)) | [
[ 13, 4, 28, 18 ],
[ 4, 14, 32, 27 ],
[ 12, 22, 19, 8 ]
]>, gens := [
[ 13, 4, 28, 18 ],
[ 4, 14, 32, 27 ],
[ 12, 22, 19, 8 ]
], level := 33, entlevel := [ 3, 11 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(33)) | [
[ 16, 31, 19, 8 ],
[ 1, 22, 0, 1 ]
]>, label := ["GL3", "Remove"], NabG:=sub<GL(2,Integers(33)) | [
[ 10, 12, 21, 7 ],
[ 1, 0, 3, 16 ],
[ 23, 0, 22, 23 ],
[ 10, 0, 21, 16 ],
[ 1, 0, 11, 1 ],
[ 23, 22, 0, 23 ]
]>, index := 120, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(33)) | [
[ 31, 17, 20, 0 ],
[ 4, 23, 2, 27 ],
[ 23, 17, 10, 8 ],
[ 27, 19, 1, 26 ]
]>, gens := [
[ 31, 17, 20, 0 ],
[ 4, 23, 2, 27 ],
[ 23, 17, 10, 8 ],
[ 27, 19, 1, 26 ]
], level := 33, entlevel := [ 3, 11 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(33)) | [
[ 14, 32, 26, 10 ],
[ 1, 11, 0, 1 ]
]>, label := ["GL3", "Remove"], NabG:=sub<GL(2,Integers(33)) | [
[ 4, 0, 18, 28 ],
[ 1, 0, 22, 1 ],
[ 1, 0, 15, 10 ],
[ 23, 0, 22, 23 ],
[ 23, 11, 0, 23 ],
[ 19, 15, 21, 22 ]
]>, index := 120, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(33)) | [
[ 25, 29, 16, 31 ],
[ 19, 8, 23, 18 ],
[ 23, 2, 1, 32 ]
]>, gens := [
[ 25, 29, 16, 31 ],
[ 19, 8, 23, 18 ],
[ 23, 2, 1, 32 ]
], level := 33, entlevel := [ 3, 11 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(33)) | [
[ 20, 29, 27, 26 ],
[ 9, 7, 5, 4 ],
[ 1, 11, 0, 1 ]
]>, label := ["GL3", "Remove"], NabG:=sub<GL(2,Integers(33)) | [
[ 13, 0, 30, 31 ],
[ 12, 22, 11, 1 ],
[ 23, 0, 0, 23 ],
[ 1, 9, 18, 10 ],
[ 1, 0, 11, 1 ]
]>, index := 120, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(33)) | [
[ 30, 5, 14, 11 ],
[ 8, 23, 7, 23 ],
[ 27, 19, 1, 26 ],
[ 14, 29, 8, 24 ]
]>, gens := [
[ 30, 5, 14, 11 ],
[ 8, 23, 7, 23 ],
[ 27, 19, 1, 26 ],
[ 14, 29, 8, 24 ]
], level := 33, entlevel := [ 3, 11 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(33)) | [
[ 27, 20, 19, 30 ],
[ 1, 11, 0, 1 ]
]>, label := ["GL3", "Remove"], NabG:=sub<GL(2,Integers(33)) | [
[ 1, 0, 22, 1 ],
[ 1, 0, 15, 10 ],
[ 23, 0, 22, 23 ],
[ 12, 11, 22, 12 ],
[ 4, 0, 21, 10 ],
[ 7, 15, 12, 31 ]
]>, index := 120, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(33)) | [
[ 14, 20, 19, 17 ],
[ 12, 32, 29, 1 ],
[ 19, 1, 7, 12 ],
[ 2, 26, 25, 14 ]
]>, gens := [
[ 14, 20, 19, 17 ],
[ 12, 32, 29, 1 ],
[ 19, 1, 7, 12 ],
[ 2, 26, 25, 14 ]
], level := 33, entlevel := [ 3, 11 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(33)) | [
[ 15, 26, 28, 9 ],
[ 1, 11, 0, 1 ]
]>, label := ["GL3", "Remove"], NabG:=sub<GL(2,Integers(33)) | [
[ 23, 0, 0, 23 ],
[ 28, 3, 3, 16 ],
[ 1, 0, 22, 1 ],
[ 1, 0, 15, 10 ],
[ 1, 0, 18, 25 ],
[ 12, 11, 22, 23 ]
]>, index := 120, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(33)) | [
[ 2, 13, 5, 20 ],
[ 26, 1, 29, 8 ],
[ 30, 10, 4, 26 ]
]>, gens := [
[ 2, 13, 5, 20 ],
[ 26, 1, 29, 8 ],
[ 30, 10, 4, 26 ]
], level := 33, entlevel := [ 3, 11 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(33)) | [
[ 24, 16, 2, 0 ],
[ 1, 11, 0, 1 ],
[ 12, 22, 11, 12 ]
]>, label := ["GL3", "Remove"], NabG:=sub<GL(2,Integers(33)) | [
[ 19, 24, 18, 25 ],
[ 23, 11, 11, 1 ],
[ 1, 0, 15, 10 ],
[ 23, 0, 22, 23 ],
[ 4, 0, 0, 4 ],
[ 1, 0, 11, 1 ]
]>, index := 120, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(33)) | [
[ 14, 31, 19, 6 ],
[ 26, 2, 7, 32 ],
[ 1, 14, 17, 15 ],
[ 5, 8, 1, 26 ]
]>, gens := [
[ 14, 31, 19, 6 ],
[ 26, 2, 7, 32 ],
[ 1, 14, 17, 15 ],
[ 5, 8, 1, 26 ]
], level := 33, entlevel := [ 3, 11 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(33)) | [
[ 26, 26, 17, 31 ],
[ 1, 22, 0, 1 ]
]>, label := ["GL3", "Remove"], NabG:=sub<GL(2,Integers(33)) | [
[ 23, 0, 11, 23 ],
[ 23, 22, 11, 12 ],
[ 22, 18, 21, 31 ],
[ 1, 0, 15, 10 ],
[ 4, 0, 12, 31 ],
[ 1, 0, 11, 1 ]
]>, index := 120, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(33)) | [
[ 19, 16, 2, 28 ],
[ 6, 23, 29, 10 ],
[ 26, 2, 7, 32 ],
[ 2, 14, 7, 32 ]
]>, gens := [
[ 19, 16, 2, 28 ],
[ 6, 23, 29, 10 ],
[ 26, 2, 7, 32 ],
[ 2, 14, 7, 32 ]
], level := 33, entlevel := [ 3, 11 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(33)) | [
[ 12, 2, 28, 24 ],
[ 1, 22, 0, 1 ],
[ 17, 3, 32, 29 ]
]>, label := ["GL3", "Remove"], NabG:=sub<GL(2,Integers(33)) | [
[ 23, 0, 11, 23 ],
[ 22, 18, 24, 13 ],
[ 1, 22, 0, 1 ],
[ 1, 0, 9, 13 ],
[ 4, 0, 24, 25 ],
[ 1, 0, 11, 1 ]
]>, index := 24, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := true >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(33)) | [
[ 3, 2, 14, 11 ],
[ 4, 5, 16, 28 ],
[ 26, 2, 7, 32 ],
[ 3, 2, 14, 22 ]
]>, gens := [
[ 3, 2, 14, 11 ],
[ 4, 5, 16, 28 ],
[ 26, 2, 7, 32 ],
[ 3, 2, 14, 22 ]
], level := 33, entlevel := [ 3, 11 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(33)) | [
[ 23, 1, 16, 28 ],
[ 1, 22, 0, 1 ],
[ 29, 30, 12, 17 ]
]>, label := ["GL3", "Remove"], NabG:=sub<GL(2,Integers(33)) | [
[ 13, 0, 30, 31 ],
[ 28, 21, 15, 13 ],
[ 23, 0, 0, 23 ],
[ 1, 0, 3, 16 ],
[ 23, 11, 0, 23 ],
[ 1, 0, 11, 1 ]
]>, index := 24, jInvs := [], containsmI := false, explained := true, EntInKerOfIsog := false >];
EntaglementGroup := recformat<G: GrpMat, gens: SeqEnum, level: RngIntElt, H: GrpMat, entlevel: SeqEnum, enttype: SeqEnum, label: SeqEnum, NabG: GrpMat, index: RngIntElt, jmap: FldFunRatUElt, jInvs: SeqEnum, containsmI: BoolElt, explained: BoolElt, EntInKerOfIsog: BoolElt, EM: CrvEll, jEM: FldFunRatMElt>;

Genus1rp := AssociativeArray();

Genus1rp[<[ 2, 7 ], ["C2", "C2"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(14)) | [
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
Genus1rp[<[ 3, 7 ], ["C2", "C1"]>] := [rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 7, 2, 13, 7 ],
[ 0, 10, 1, 14 ],
[ 7, 8, 11, 0 ]
]>, gens := [
[ 7, 2, 13, 7 ],
[ 0, 10, 1, 14 ],
[ 7, 8, 11, 0 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 1, 7, 0, 1 ],
[ 17, 7, 14, 12 ]
]>, label := ["GL3", "7Ns"], NabG:=sub<GL(2,Integers(21)) | [
[ 1, 0, 0, 19 ],
[ 1, 0, 14, 1 ],
[ 8, 0, 14, 8 ],
[ 15, 7, 14, 15 ],
[ 10, 0, 0, 1 ]
]>, index := 56, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 8, 7, 14, 5 ],
[ 7, 13, 4, 0 ]
]>, gens := [
[ 8, 7, 14, 5 ],
[ 7, 13, 4, 0 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 10, 14, 14, 5 ],
[ 1, 14, 0, 1 ]
]>, label := ["GL3", "7Ns"], NabG:=sub<GL(2,Integers(21)) | [
[ 7, 6, 6, 7 ],
[ 1, 0, 14, 1 ],
[ 1, 14, 0, 1 ],
[ 10, 0, 0, 13 ],
[ 8, 0, 0, 8 ],
[ 1, 0, 0, 4 ]
]>, index := 56, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >,
rec<EntaglementGroup |G:=sub<GL(2,Integers(21)) | [
[ 2, 19, 11, 5 ],
[ 6, 19, 5, 4 ],
[ 20, 10, 3, 2 ]
]>, gens := [
[ 2, 19, 11, 5 ],
[ 6, 19, 5, 4 ],
[ 20, 10, 3, 2 ]
], level := 21, entlevel := [ 3, 7 ], enttype := ["C2", "C1"], H:=sub<SL(2,Integers(21)) | [
[ 1, 7, 0, 1 ],
[ 5, 1, 8, 6 ]
]>, label := ["GL3", "7Nn"], NabG:=sub<GL(2,Integers(21)) | [
[ 10, 0, 0, 10 ],
[ 8, 0, 0, 8 ],
[ 1, 14, 7, 15 ],
[ 10, 6, 6, 16 ],
[ 1, 0, 7, 1 ]
]>, index := 42, jInvs := [], containsmI := true, explained := true, EntInKerOfIsog := false >];
