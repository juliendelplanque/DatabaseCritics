tests-entity-checking
testRunOn
	| test entity entities |
	self generateModelFrom: self mseString.
	test := DCBTableUppercase new.
	entity := (model entities detect: [ :e | e name = 'Theme' ]).
	test runOn: entity.
	self assert: (test entitiesViolatingTheRule includes: entity).
	
	entities := (model entities select: [ :e | (test acceptEntity: e) and: [ e name ~= 'Theme' ] ]).
	entities do: [ :table |
		test runOn: table.
		self assert: test entitiesViolatingTheRule size equals: 1 ]