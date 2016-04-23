model-building
buildModelWith: aMooseModel
	| table column1 column2 |
	table := FAMIXTable new name: 'foo'; yourself.
	column1 := FAMIXColumn new name: 'foo_col'; yourself.
	column2 := FAMIXColumn new name: 'Bar_col'; yourself.
	table
		addColumn: column1;
		addColumn: column2.
	aMooseModel
		add: table;
		add: column1;
		add: column2.