model-building
buildModelWith: aMooseModel
	| table |
	table := FAMIXTable new
					name: 'foo';
					mooseModel: aMooseModel;
					yourself.
	FAMIXColumn new
		name: 'foo_col';
		ownerTable: table;
		mooseModel: aMooseModel.
	
	FAMIXColumn new
		name: 'Bar_col';
		ownerTable: table;
		mooseModel: aMooseModel.