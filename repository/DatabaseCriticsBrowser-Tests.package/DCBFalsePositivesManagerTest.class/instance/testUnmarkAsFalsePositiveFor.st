tests-marking
testUnmarkAsFalsePositiveFor
	| rule entity |
	self should: [ falsePositivesManager unmark: FAMIXTable new asFalsePositiveFor: DCBMissingPrimaryKey new ] raise: DCBNoFalsePositiveForRule.
	
	rule := DCBDUnusedPrimaryKey new.
	entity := FAMIXTable new
					name: 'people';
					yourself.
	falsePositivesManager mark: entity asFalsePositiveFor: rule.
	
	self should: [ falsePositivesManager unmark: DCBFalsePositive new asFalsePositiveFor: rule ] raise: DCBNoFalsePositive.
	
	falsePositivesManager unmark: (DCBFalsePositive entity: entity forRule: rule) asFalsePositiveFor: rule.
	
	self assert: falsePositivesManager falsePositivesDict size = 1.
	self assert: (falsePositivesManager falsePositivesDict at: rule class) isEmpty