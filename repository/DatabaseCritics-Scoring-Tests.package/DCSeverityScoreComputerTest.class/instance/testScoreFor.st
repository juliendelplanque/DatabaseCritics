tests-score-computation
testScoreFor
	"Test with a rule having no entites."
	| rule |
	self assert: (scoreComputer scoreFor: DCUnusedFunction new) equals: 0.
	
	"Test with a rule having entities."
	rule := DCUnusedFunction new.
	rule addViolatingEntity: FAMIXSQLFunction new.
	self assert: (scoreComputer scoreFor: rule) equals: rule severity level.
	
	rule addViolatingEntity: FAMIXSQLFunction new.
	self assert: (scoreComputer scoreFor: rule) equals: rule severity level * 2