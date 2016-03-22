button-action
applyAction
	falsePositiveToUnmark
		do: [ :falsePositive | DCBRule falsePositivesManager unmark: falsePositive asFalsePositiveForClass: falsePositive ruleClass ].
	falsePositiveToUnmark isEmpty
		ifFalse: [ 
			self announce: (DCBFalsePositivesUpdated falsePositivesUnmarked: falsePositiveToUnmark).
			falsePositiveToUnmark := Set new ]