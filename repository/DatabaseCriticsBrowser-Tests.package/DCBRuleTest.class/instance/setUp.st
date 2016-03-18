running
setUp
	model := MooseModel new.

	astBuilder := PetitSQLIslandASTBuilder new.
	visitorDef := PetitSQLIslandDef new.
	visitorDef model: model.
	visitorRef := PetitSQLIslandRef new.
	visitorRef model: model.