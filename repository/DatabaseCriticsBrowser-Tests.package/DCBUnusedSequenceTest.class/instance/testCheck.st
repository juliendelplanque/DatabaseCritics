tests-entity-checking
testCheck
	| test usedSequence unusedSequence |
	self generateModelFrom: self mseString.
	test := DCBUnusedSequence new.
	usedSequence := (model entities detect: [ :e | e isSequence and: [ e name = 'used' ] ]).
	unusedSequence := (model entities detect: [ :e | e isSequence and: [ e name = 'unused' ] ]).
	self assert: (test check: unusedSequence).
	self deny: (test check: usedSequence)