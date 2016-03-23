marking
unmark: aDCBFalsePositive asFalsePositiveForClass: aRuleClass
	"First we verify if there is already the key and its associated list in the dictionary."
	(falsePositivesDict includesKey: aRuleClass)
		ifFalse: [ "If not we raise an error."
			(DCBNoFalsePositiveForRule rule: aRuleClass) signal ].
	
	(falsePositivesDict at: aRuleClass)
		detect: [ :falsePositive | falsePositive = aDCBFalsePositive  ]
		ifFound: [ :found | (falsePositivesDict at: aRuleClass) remove: found  ]
		ifNone: [ (DCBNoFalsePositive falsePositive: aDCBFalsePositive) signal ]
	
	