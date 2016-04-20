tests-entity-checking
testCheck
	| test entity entities |
	self generateModelFrom: self mseString.
	test := DCLowNumberOfColumns new.
	"Set test threshold."
	test threshold: 3.
	"Test"
	entity := (model entities detect: [ :e | e name = 'theme' ]).
	self assert: (test check: entity).
	
	entities := (model entities select: [ :e | (test acceptEntity: e) and: [ e name ~= 'theme' ] ]).
	entities do: [ :key |
		self deny: (test check: key) ].