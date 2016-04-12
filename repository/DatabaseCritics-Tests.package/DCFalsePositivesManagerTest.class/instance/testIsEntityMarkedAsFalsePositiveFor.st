tests-marking
testIsEntityMarkedAsFalsePositiveFor
	| rule entity |
	rule := DCUnusedPrimaryKey new.
	entity := FAMIXTable new
					name: 'people';
					yourself.
	self deny: (falsePositivesManager isEntity: entity markedAsFalsePositiveFor: rule).
	
	falsePositivesManager mark: entity asFalsePositiveFor: rule.
	
	self assert: (falsePositivesManager isEntity: entity markedAsFalsePositiveFor: rule).
	
	entity := FAMIXTable new
					name: 'others';
					yourself.
	self deny: (falsePositivesManager isEntity: entity markedAsFalsePositiveFor: rule)