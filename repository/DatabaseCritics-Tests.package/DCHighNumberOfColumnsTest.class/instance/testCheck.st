tests-entity-checking
testCheck
	| test entity entities |
	self generateModelFrom: self mseString.
	test := DCHighNumberOfColumns new.
	"Set test threshold."
	test threshold: 2.
	"Test"
	entity := (model entities detect: [ :e | e name = 'sujet' ]).
	self assert: (test check: entity).
	
	entities := (model entities select: [ :e | (test acceptEntity: e) and: [ e name ~= 'sujet' ] ]).
	entities do: [ :key |
		self deny: (test check: key) ].