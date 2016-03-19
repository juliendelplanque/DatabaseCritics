tests-entity-checking
testCheck
	| test functionHello functionFoo |
	self generateModelFrom: self mseString.
	test := DCBUnusedFunction new.
	functionHello := (model entities detect: [ :e | e isSQLFunction and: [ e name = 'hello' ] ]).
	functionFoo := (model entities detect: [ :e | e isSQLFunction and: [ e name = 'foo' ] ]).
	self assert: (test check: functionFoo).
	self deny: (test check: functionHello)