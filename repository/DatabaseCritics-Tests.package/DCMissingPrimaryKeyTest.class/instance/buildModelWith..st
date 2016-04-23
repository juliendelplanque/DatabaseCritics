model-building
buildModelWith: aMooseModel
	| table1 table2 pkColumn |
	table1 := FAMIXTable new name: 'foo1'; yourself.
	1 to: 6 do: [ :i |
		| column |
		column := FAMIXColumn new name: ('bar',i asString); yourself.
		aMooseModel add: column.
		table1 addColumn: column ].
	aMooseModel add: table1.
	
	table2 := FAMIXTable new name: 'foo2'; yourself.
	pkColumn := FAMIXColumn new name: 'barpk'; yourself.
	pkColumn isPK: true.
	table2 addColumn: pkColumn.
	aMooseModel add: pkColumn.
	1 to: 5 do: [ :i |
		| column |
		column := FAMIXColumn new name: ('bar',i asString); yourself.
		aMooseModel add: column.
		table2 addColumn: column ].
	aMooseModel add: table2