model-building
buildModelWith: aMooseModel
	| table1 table2 |
	table1 := FAMIXTable new name: 'foo1'; yourself.
	1 to: 15 do: [ :i |
		| column |
		column := FAMIXColumn new name: ('bar',i asString); yourself.
		aMooseModel add: column.
		table1 addColumn: column ].
	aMooseModel add: table1.
	
	table2 := FAMIXTable new name: 'foo2'; yourself.
	1 to: 5 do: [ :i |
		| column |
		column := FAMIXColumn new name: ('barfoo',i asString); yourself.
		aMooseModel add: column.
		table2 addColumn: column ].
	aMooseModel add: table2