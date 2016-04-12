tests-marking
testUnmarkAsFalsePositiveFor
	| rule entity |
	self should: [ falsePositivesManager unmark: FAMIXTable new asFalsePositiveFor: DCMissingPrimaryKey new ] raise: DCNoFalsePositiveForRule.
	
	rule := DCUnusedPrimaryKey new.
	entity := FAMIXTable new
					name: 'people';
					yourself.
	falsePositivesManager mark: entity asFalsePositiveFor: rule.
	
	self should: [ falsePositivesManager unmark: DCFalsePositive new asFalsePositiveFor: rule ] raise: DCNoFalsePositive.
	
	falsePositivesManager unmark: (DCFalsePositive entity: entity forRule: rule) asFalsePositiveFor: rule.
	
	self assert: falsePositivesManager falsePositivesDict size = 1.
	self assert: (falsePositivesManager falsePositivesDict at: rule class) isEmpty