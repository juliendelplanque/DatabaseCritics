model-building
buildModelWith: aMooseModel
	| table1 table2 |
	table1 := FAMIXTable new
					name: 'foo1';
					mooseModel: aMooseModel;
					yourself.
	self add: 6 columnsTo: table1.
	
	table2 := FAMIXTable new
					name: 'foo2';
					mooseModel: aMooseModel;
					yourself.
	FAMIXColumn new
		name: 'barpk';
		mooseModel: aMooseModel;
		isPK: true;
		ownerTable: table2.
	self add: 5 columnsTo: table2