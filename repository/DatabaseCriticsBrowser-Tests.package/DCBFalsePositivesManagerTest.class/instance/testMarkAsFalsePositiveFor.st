tests-marking
testMarkAsFalsePositiveFor
	| rule entity falsePositive |
	self assert: falsePositivesManager falsePositivesDict isEmpty.
	rule := DCBDUnusedPrimaryKey new.
	entity := FAMIXTable new
					name: 'people';
					yourself.
	falsePositivesManager mark: entity asFalsePositiveFor: rule.
	
	self assert: falsePositivesManager falsePositivesDict size equals: 1.
	self assert: (falsePositivesManager falsePositivesDict at: rule class) class equals: LinkedList.
	self assert: (falsePositivesManager falsePositivesDict at: rule class) size equals: 1.
	falsePositive := (falsePositivesManager falsePositivesDict at: rule class) first.
	self assert: falsePositive class equals: DCBFalsePositive.