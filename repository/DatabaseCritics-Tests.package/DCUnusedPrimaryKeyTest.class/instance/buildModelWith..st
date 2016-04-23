model-building
buildModelWith: aMooseModel
	| table1 pkColumn table2 pkColumn2 fk |
	table1 := FAMIXTable new
					name: 'foo1';
					mooseModel: aMooseModel;
					yourself.
	
	pkColumn := FAMIXColumn new
						name: 'barPk';
						mooseModel: aMooseModel;
						isPK: true;
						yourself.
	table1 addColumn: pkColumn.
	1 to: 5 do: [ :i |
		| column |
		column := FAMIXColumn new
						name: ('bar',i asString);
						mooseModel: aMooseModel;
						yourself.
		table1 addColumn: column ].
	
	table2 := FAMIXTable new
					name: 'foo2';
					mooseModel: aMooseModel;
					yourself.
	pkColumn2 := FAMIXColumn new
						name: 'barPkUsed';
						mooseModel: aMooseModel;
						isPK: true;
						yourself.
	table1 addColumn: pkColumn2.
	1 to: 5 do: [ :i |
		| column |
		column := FAMIXColumn new
						name: ('bar',i asString);
						mooseModel: aMooseModel;
						yourself.
		table2 addColumn: column ].
	fk := (table1 columns reject: #isPK) first.
	fk isFK: true.
	FAMIXFKToPKAssociation new
		mooseModel: aMooseModel;
		sourceColumn: fk;
		targetColumn: pkColumn2