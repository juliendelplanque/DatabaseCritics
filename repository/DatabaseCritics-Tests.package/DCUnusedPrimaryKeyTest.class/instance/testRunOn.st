tests-entity-checking
testRunOn
	| test entity entities |
	self generateModelFrom: self mseString.
	test := DCUnusedPrimaryKey new.
	entity := (model entities detect: [ :e | e name = 'action' ]).
	test runOn: entity.
	self assert: (test entitiesViolatingTheRule includes: entity).
	
	entities := (model entities select: [ :e | (test acceptEntity: e) and: [ e name ~= 'action' ] ]).
	entities do: [ :e |
		test runOn: e.
		self assert: test entitiesViolatingTheRule size equals: 1 ]