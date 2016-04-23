model-building
buildModelWith: aMooseModel
	| table1 table2 viewUsing1Table viewUsing2Tables |
	table1 := FAMIXTable new
					name: 'foo1';
					mooseModel: aMooseModel;
					yourself.
	1 to: 6 do: [ :i |
		| column |
		column := FAMIXColumn new
						name: ('bar1',i asString);
						mooseModel: aMooseModel;
						ownerTable: table1;
						yourself.
		table1 addColumn: column ].
	
	table2 := FAMIXTable new
					name: 'foo2';
					mooseModel: aMooseModel;
					yourself.
	1 to: 6 do: [ :i |
		| column |
		column := FAMIXColumn new
						name: ('bar2',i asString);
						mooseModel: aMooseModel;
						ownerTable: table2;
						yourself.
		table2 addColumn: column ].
	
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
		viewUsing1Table addColumn: column.
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
		viewUsing2Tables addColumn: column.
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
		viewUsing2Tables addColumn: column.
		FAMIXColumnToColumnAssociation new
			mooseModel: aMooseModel;
			sourceColumn: column;
			targetColumn: (table2 columns at: i) ].