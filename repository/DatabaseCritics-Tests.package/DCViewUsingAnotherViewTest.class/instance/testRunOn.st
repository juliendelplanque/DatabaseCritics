tests-entity-checking
testRunOn
	| test entity entities |
	self generateModelFrom: self mseString.
	test := DCViewUsingAnotherView new.
	entity := (model entities detect: [ :e | e name = 'barview' ]).
	test runOn: entity.
	self assert: (test entitiesViolatingTheRule includes: entity).
	
	entities := (model entities select: [ :e | (test acceptEntity: e) and: [ e name ~= 'barview' ] ]).
	entities do: [ :e |
		test runOn: e.
		self assert: test entitiesViolatingTheRule size equals: 1 ]