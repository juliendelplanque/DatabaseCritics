tests-entity-checking
testCheck
	| test originalThreshold entity entities |
	self generateModelFrom: self mseString.
	test := DCBHighNumberOfColumns new.
	"Backup current threshold."
	originalThreshold := DCBHighNumberOfColumns threshold.
	"Set test threshold."
	DCBHighNumberOfColumns threshold: 2.
	"Test"
	entity := (model entities detect: [ :e | e name = 'sujet' ]).
	self assert: (test check: entity).
	
	entities := (model entities select: [ :e | (test acceptEntity: e) and: [ e name ~= 'sujet' ] ]).
	entities do: [ :key |
		self deny: (test check: key) ].
	
	"Set the original threshold back."
	originalThreshold
		ifNil: [ DCBHighNumberOfColumns resetThreshold ]
		ifNotNil: [ DCBHighNumberOfColumns threshold: originalThreshold ]