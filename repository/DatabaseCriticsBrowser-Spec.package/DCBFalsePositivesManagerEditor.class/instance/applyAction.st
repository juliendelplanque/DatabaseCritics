button-action
applyAction
	falsePositiveToUnmark isEmpty "If no false positive have to be unmarked, do nothing."
		ifTrue: [ ^ self ].
	"Else, unmark them and announce the fact that false positives have been updated."
	falsePositiveToUnmark
		do: [ :falsePositive | 
			DCBRule falsePositivesManager
				unmark: falsePositive
				asFalsePositiveForClass: falsePositive ruleClass ].
	self
		announce:
			(DCBFalsePositivesUpdated
				falsePositivesUnmarked: falsePositiveToUnmark).
	falsePositiveToUnmark := Set new