testing
isThereFalsePositiveFor: aRuleClass
	^ (falsePositivesDict includesKey: aRuleClass)
			and: [ (falsePositivesDict at: aRuleClass) isNotEmpty ]