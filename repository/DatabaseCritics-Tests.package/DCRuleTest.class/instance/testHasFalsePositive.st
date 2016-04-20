tests-false-positives
testHasFalsePositive
	| rule |
	rule := DCHighNumberOfColumns new.
	self assert: rule falsePositives size equals: 0.
	self deny: rule hasFalsePositive.
	rule addFalsePositive: (FAMIXTable new name: 'foo').
	self assert: rule falsePositives size equals: 1.
	self assert: rule hasFalsePositive