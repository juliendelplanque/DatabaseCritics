model-building
buildModelWith: aMooseModel
	| table viewUsed viewUsing |
	table := FAMIXTable new
					name: 'foo';
					mooseModel: aMooseModel;
					yourself.
	self add: 6 columnsTo: table.
	
	viewUsed := FAMIXView new
						name: 'bar_used';
						mooseModel: aMooseModel;
						yourself.
	1 to: 3 do: [ :i |
		| column |
		column := FAMIXColumn new
						name: ('bar_v',i asString);
						mooseModel: aMooseModel;
						ownerTable: viewUsed;
						yourself.
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
						ownerTable: viewUsing;
						yourself.
		FAMIXColumnToColumnAssociation new
			mooseModel: aMooseModel;
			sourceColumn: column;
			targetColumn: (viewUsed columns at: i) ].