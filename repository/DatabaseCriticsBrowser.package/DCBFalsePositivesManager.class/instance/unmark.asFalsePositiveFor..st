marking
unmark: aDCBFalsePositive asFalsePositiveFor: aRule
	"First we verify if there is already the key and its associated list in the dictionary."
	(falsePositivesDict includesKey: aRule class)
		ifFalse: [ "If not we raise an error."
			(DCBNoFalsePositiveForRule rule: aRule class) signal ].
	
	(falsePositivesDict at: aRule class)
		detect: [ :falsePositive | falsePositive = aDCBFalsePositive  ]
		ifFound: [ :found | (falsePositivesDict at: aRule class) remove: found  ]
		ifNone: [ (DCBNoFalsePositive falsePositive: aDCBFalsePositive) signal ]
	
	