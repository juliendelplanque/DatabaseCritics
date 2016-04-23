model-building
buildModelWith: aMooseModel
	| table viewUsed viewUsing |
	table := FAMIXTable new
					name: 'foo';
					mooseModel: aMooseModel;
					yourself.
	1 to: 6 do: [ :i |
		| column |
		column := FAMIXColumn new
						name: ('bar',i asString);
						mooseModel: aMooseModel;
						ownerTable: table;
						yourself.
		table addColumn: column ].
	
	viewUsed := FAMIXView new
						name: 'bar_used';
						mooseModel: aMooseModel;
						yourself.
	1 to: 3 do: [ :i |
		| column |
		column := FAMIXColumn new
						name: ('bar_v',i asString);
						mooseModel: aMooseModel;
						ownerTable: table;
						yourself.
		viewUsed addColumn: column.
		FAMIXColumnToColumnAssociation new
			mooseModel: aMooseModel;
			sourceColumn: column;
			targetColumn: (table columns at: i) ].
					
	viewUsing := FAMIXView new
							name: 'bar_using';
							mooseModel: aMooseModel;
							yourself.
	1 to: 3 do: [ :i |
		| column |
		column := FAMIXColumn new
						name: ('bar_vu',i asString);
						mooseModel: aMooseModel;
						ownerTable: table;
						yourself.
		viewUsing addColumn: column.
		FAMIXColumnToColumnAssociation new
			mooseModel: aMooseModel;
			sourceColumn: column;
			targetColumn: (viewUsed columns at: i) ].