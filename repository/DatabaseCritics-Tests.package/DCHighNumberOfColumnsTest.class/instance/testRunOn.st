tests-entity-checking
testRunOn
	| test entity entities |
	self generateModelFrom: self mseString.
	test := DCHighNumberOfColumns new.
	"Set test threshold."
	test threshold: 2.
	"Test"
	entity := (model entities detect: [ :e | e name = 'sujet' ]).
	test runOn: entity.
	self assert: (test entitiesViolatingTheRule includes: entity).
	
	entities := (model entities select: [ :e | (test acceptEntity: e) and: [ e name ~= 'sujet' ] ]).
	entities do: [ :key |
		test runOn: key.
		self assert: test entitiesViolatingTheRule size equals: 1 ].