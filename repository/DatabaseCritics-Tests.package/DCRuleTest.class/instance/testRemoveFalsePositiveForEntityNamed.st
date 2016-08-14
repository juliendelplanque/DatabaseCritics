tests-false-positives
testRemoveFalsePositiveForEntityNamed
	| rule |
	rule := DCHighNumberOfColumns new.
	self assert: rule falsePositives size equals: 0.
	rule addFalsePositive: (FAMIXTable new name: 'foo').
	self assert: rule falsePositives size equals: 1.
	rule removeFalsePositiveForEntityNamed: 'foo'.
	self assert: rule falsePositives size equals: 0