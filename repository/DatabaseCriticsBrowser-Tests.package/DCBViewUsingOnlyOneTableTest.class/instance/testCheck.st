tests-entity-checking
testCheck
	| test entity entities |
	self generateModelFrom: self mseString.
	test := DCBViewUsingOnlyOneTable new.
	entity := (model entities detect: [ :e | e name = 'fooview' ]).
	self assert: (test check: entity).
	
	entities := (model entities select: [ :e | (test acceptEntity: e) and: [ e name ~= 'fooview' ] ]).
	entities do: [ :key |
		self deny: (test check: key) ]