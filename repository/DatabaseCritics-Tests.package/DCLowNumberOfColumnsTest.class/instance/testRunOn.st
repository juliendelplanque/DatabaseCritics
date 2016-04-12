tests-entity-checking
testRunOn
	| test entity entities originalThreshold |
	self generateModelFrom: self mseString.
	test := DCLowNumberOfColumns new.
	"Backup current threshold."
	originalThreshold := DCLowNumberOfColumns threshold.
	"Set test threshold."
	DCLowNumberOfColumns threshold: 3.
	"Test"
	entity := (model entities detect: [ :e | e name = 'theme' ]).
	test runOn: entity.
	self assert: (test entitiesViolatingTheRule includes: entity).
	
	entities := (model entities select: [ :e | (test acceptEntity: e) and: [ e name ~= 'theme' ] ]).
	entities do: [ :key |
		test runOn: key.
		self assert: test entitiesViolatingTheRule size equals: 1 ].

	"Set the original threshold back."
	originalThreshold
		ifNil: [ DCLowNumberOfColumns resetThreshold ]
		ifNotNil: [ DCLowNumberOfColumns threshold: originalThreshold ]