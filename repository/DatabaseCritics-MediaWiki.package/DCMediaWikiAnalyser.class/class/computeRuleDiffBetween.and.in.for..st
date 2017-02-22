analysis
computeRuleDiffBetween: lastRule and: currentRule in: results for: checker.
	"Violations appearing"
	currentRule entitiesViolatingTheRuleWithoutFalsePositives do: [ :e |
		lastRule entitiesViolatingTheRuleWithoutFalsePositives
			detect: [ :lastE | e name = lastE name and: [ e class = lastE class ] ]
			ifNone: [
				results add: { checker model name . 'Appearance' . currentRule class . e name . e class } ] ].
	"Violations disappearing"
	lastRule entitiesViolatingTheRuleWithoutFalsePositives do: [ :lastE |
		currentRule entitiesViolatingTheRuleWithoutFalsePositives
			detect: [ :e | lastE name = e name and: [ lastE class = e class ] ]
			ifNone: [ 
				results add: { checker model name . 'Disappearance' . currentRule class . lastE name . lastE class } ] ]