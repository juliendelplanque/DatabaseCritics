model-building
buildModelWith: aMooseModel
	| table1 table2 |
	table1 := FAMIXTable new name: 'foo'; yourself.
	aMooseModel add: table1.
	table2 := FAMIXTable new name: 'Bar'; yourself.
	aMooseModel add: table2