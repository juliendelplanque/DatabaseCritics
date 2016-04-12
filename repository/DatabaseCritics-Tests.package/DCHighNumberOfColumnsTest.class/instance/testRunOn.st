tests-entity-checking
testRunOn
	| test entity entities originalThreshold |
	self generateModelFrom: self mseString.
	test := DCHighNumberOfColumns new.
	"Backup current threshold."
	originalThreshold := DCHighNumberOfColumns threshold.
	"Set test threshold."
	DCHighNumberOfColumns threshold: 2.
	"Test"
	entity := (model entities detect: [ :e | e name = 'sujet' ]).
	test runOn: entity.
	self assert: (test entitiesViolatingTheRule includes: entity).
	
	entities := (model entities select: [ :e | (test acceptEntity: e) and: [ e name ~= 'sujet' ] ]).
	entities do: [ :key |
		test runOn: key.
		self assert: test entitiesViolatingTheRule size equals: 1 ].

	"Set the original threshold back."
	originalThreshold
		ifNil: [ DCHighNumberOfColumns resetThreshold ]
		ifNotNil: [ DCHighNumberOfColumns threshold: originalThreshold ]