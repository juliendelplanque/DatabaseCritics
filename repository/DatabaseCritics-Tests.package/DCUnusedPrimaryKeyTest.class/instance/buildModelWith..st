model-building
buildModelWith: aMooseModel
	| table1 table2 pkColumn2 fk |
	table1 := FAMIXTable new
					name: 'foo1';
					mooseModel: aMooseModel;
					yourself.
	
	FAMIXColumn new
		name: 'barPk';
		mooseModel: aMooseModel;
		isPK: true;
		ownerTable: table1.	
	self add: 5 columnsTo: table1.
	
	table2 := FAMIXTable new
					name: 'foo2';
					mooseModel: aMooseModel;
					yourself.
	pkColumn2 := FAMIXColumn new
						name: 'barPkUsed';
						mooseModel: aMooseModel;
						isPK: true;
						ownerTable: table2;
						yourself.
	self add: 5 columnsTo: table2.
	
	fk := (table1 columns reject: #isPK) first.
	fk isFK: true.
	FAMIXFKToPKAssociation new
		mooseModel: aMooseModel;
		sourceColumn: fk;
		targetColumn: pkColumn2