score-computation
scoreFor: aRule
	^ aRule severity level * aRule entitiesViolatingTheRuleWithoutFalsePositives size