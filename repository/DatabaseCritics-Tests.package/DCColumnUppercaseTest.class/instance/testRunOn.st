tests-entity-checking
testRunOn
	| test entity entities |
	self generateModelFrom: self mseString.
	test := DCColumnUppercase new.
	entity := (model entities detect: [ :e | e name = 'Cle' ]).
	test runOn: entity.
	self assert: (test entitiesViolatingTheRule includes: entity).
	
	entities := (model entities select: [ :e | (test acceptEntity: e) and: [ e name ~= 'Cle' ] ]).
	entities do: [ :key |
		test runOn: key.
		self assert: test entitiesViolatingTheRule size equals: 1 ]