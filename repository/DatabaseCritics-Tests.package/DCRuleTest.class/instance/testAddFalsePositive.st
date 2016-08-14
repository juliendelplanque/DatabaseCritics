tests-false-positives
testAddFalsePositive
	| rule |
	rule := DCHighNumberOfColumns new.
	self assert: rule falsePositives size equals: 0.
	rule addFalsePositive: (FAMIXTable new name: 'foo').
	self assert: rule falsePositives size equals: 1.
	self assert: rule falsePositives first entityName equals: 'foo'