tests-entity-checking
testCheck
	| test entity entities |
	self generateModelFrom: self mseString.
	test := DCTableUppercase new.
	entity := (model entities detect: [ :e | e name = 'Theme' ]).
	self assert: (test check: entity).
	
	entities := (model entities select: [ :e | (test acceptEntity: e) and: [ e name ~= 'Theme' ] ]).
	entities do: [ :key |
		self deny: (test check: key) ]