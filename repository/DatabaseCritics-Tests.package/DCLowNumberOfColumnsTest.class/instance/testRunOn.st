tests-entity-checking
testRunOn
	| test entity entities |
	self generateModelFrom: self mseString.
	test := DCLowNumberOfColumns new.
	"Set test threshold."
	test threshold: 3.
	"Test"
	entity := (model entities detect: [ :e | e name = 'theme' ]).
	test runOn: entity.
	self assert: (test entitiesViolatingTheRule includes: entity).
	
	entities := (model entities select: [ :e | (test acceptEntity: e) and: [ e name ~= 'theme' ] ]).
	entities do: [ :key |
		test runOn: key.
		self assert: test entitiesViolatingTheRule size equals: 1 ].