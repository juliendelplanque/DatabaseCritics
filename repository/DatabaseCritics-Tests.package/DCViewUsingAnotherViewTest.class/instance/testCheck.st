tests-entity-checking
testCheck
	| test entity entities |
	self generateModelFrom: self mseString.
	test := DCViewUsingAnotherView new.
	entity := (model entities detect: [ :e | e name = 'barview' ]).
	self assert: (test check: entity).
	
	entities := (model entities select: [ :e | (test acceptEntity: e) and: [ e name ~= 'barview' ] ]).
	entities do: [ :key |
		self deny: (test check: key) ]