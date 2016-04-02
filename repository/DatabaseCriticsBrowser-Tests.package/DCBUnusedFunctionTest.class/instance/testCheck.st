tests-entity-checking
testCheck
	| test functionUsed functionUnused |
	self generateModelFrom: self mseString.
	test := DCBUnusedFunction new.
	functionUsed := (model entities detect: [ :e | e isSQLFunction and: [ e name = 'used' ] ]).
	functionUnused := (model entities detect: [ :e | e isSQLFunction and: [ e name = 'unused' ] ]).
	self assert: (test check: functionUnused).
	self deny: (test check: functionUsed)