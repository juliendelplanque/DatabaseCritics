model-building
buildModelWith: aMooseModel
	| table1 table2 viewUsing1Table viewUsing2Tables |
	table1 := FAMIXTable new
					name: 'foo1';
					mooseModel: aMooseModel;
					yourself.
	self add: 6 columnsTo: table1.
	
	table2 := FAMIXTable new
					name: 'foo2';
					mooseModel: aMooseModel;
					yourself.
	self add: 6 columnsTo: table2.
	
	viewUsing1Table := FAMIXView new
								name: 'view1';
								mooseModel: aMooseModel;
								yourself.
	1 to: 3 do: [ :i |
		| column |
		column := FAMIXColumn new
						name: ('bar3',i asString);
						mooseModel: aMooseModel;
						ownerTable: viewUsing1Table;
						yourself.
		FAMIXColumnToColumnAssociation new
			mooseModel: aMooseModel;
			sourceColumn: column;
			targetColumn: (table1 columns at: i) ].
	
	viewUsing2Tables := FAMIXView new
									name: 'view2';
									mooseModel: aMooseModel;
									yourself.
	1 to: 3 do: [ :i |
		| column |
		column := FAMIXColumn new
						name: ('bar4',i asString);
						mooseModel: aMooseModel;
						ownerTable: viewUsing2Tables;
						yourself.
		FAMIXColumnToColumnAssociation new
			mooseModel: aMooseModel;
			sourceColumn: column;
			targetColumn: (table1 columns at: i) ].
	4 to: 6 do: [ :i |
		| column |
		column := FAMIXColumn new
						name: ('bar4',i asString);
						mooseModel: aMooseModel;
						ownerTable: viewUsing2Tables;
						yourself.
		FAMIXColumnToColumnAssociation new
			mooseModel: aMooseModel;
			sourceColumn: column;
			targetColumn: (table2 columns at: i) ].