tests-entity-checking
testCheck
	| test entity entities |
	self generateModelFrom: self mseString.
	test := DCColumnUppercase new.
	entity := (model entities detect: [ :e | e name = 'Cle' ]).
	self assert: (test check: entity).
	
	entities := (model entities select: [ :e | (test acceptEntity: e) and: [ e name ~= 'Cle' ] ]).
	entities do: [ :key |
		self deny: (test check: key) ]