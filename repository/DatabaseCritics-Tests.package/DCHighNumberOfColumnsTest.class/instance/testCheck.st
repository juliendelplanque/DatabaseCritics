tests-entity-checking
testCheck
	| test originalThreshold entity entities |
	self generateModelFrom: self mseString.
	test := DCHighNumberOfColumns new.
	"Backup current threshold."
	originalThreshold := DCHighNumberOfColumns threshold.
	"Set test threshold."
	DCHighNumberOfColumns threshold: 2.
	"Test"
	entity := (model entities detect: [ :e | e name = 'sujet' ]).
	self assert: (test check: entity).
	
	entities := (model entities select: [ :e | (test acceptEntity: e) and: [ e name ~= 'sujet' ] ]).
	entities do: [ :key |
		self deny: (test check: key) ].
	
	"Set the original threshold back."
	originalThreshold
		ifNil: [ DCHighNumberOfColumns resetThreshold ]
		ifNotNil: [ DCHighNumberOfColumns threshold: originalThreshold ]