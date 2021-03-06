button-action
applyAction
	falsePositiveToUnmark isEmpty "If no false positive have to be unmarked, do nothing."
		ifTrue: [ ^ self ].
	"Else, unmark them and announce the fact that false positives have been updated."
	falsePositiveToUnmark
		do: [ :falsePositive |
			| rule | 
			rule := self rules detect: [ :r | r class = falsePositive ruleClass ].
			rule removeFalsePositiveForEntityNamed: falsePositive entityName ].
	self
		announce:
			(DCBFalsePositivesUpdated
				falsePositivesUnmarked: falsePositiveToUnmark).
	falsePositiveToUnmark := Set new