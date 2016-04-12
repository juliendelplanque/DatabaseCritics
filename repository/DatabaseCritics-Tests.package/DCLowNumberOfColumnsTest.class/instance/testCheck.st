tests-entity-checking
testCheck
	| test originalThreshold entity entities |
	self generateModelFrom: self mseString.
	test := DCLowNumberOfColumns new.
	"Backup current threshold."
	originalThreshold := DCLowNumberOfColumns threshold.
	"Set test threshold."
	DCLowNumberOfColumns threshold: 3.
	"Test"
	entity := (model entities detect: [ :e | e name = 'theme' ]).
	self assert: (test check: entity).
	
	entities := (model entities select: [ :e | (test acceptEntity: e) and: [ e name ~= 'theme' ] ]).
	entities do: [ :key |
		self deny: (test check: key) ].
	
	"Set the original threshold back."
	originalThreshold
		ifNil: [ DCLowNumberOfColumns resetThreshold ]
		ifNotNil: [ DCLowNumberOfColumns threshold: originalThreshold ]