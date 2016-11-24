analysis
appearanceDisappearanceOfRuleViolations: checkers
	| last results|
	results := OrderedCollection new.
	last := checkers first.
	"All violations appears in the first version of the DB."
	last rules do: [ :rule |
		rule entitiesViolatingTheRuleWithoutFalsePositives do: [ :e |
			results add: { last model name . 'Appearance' . rule class . e name . e class } ] ].
	checkers allButFirst do: [ :checker |
		|lastRules currentRules|
		lastRules := last rules.
		currentRules := checker rules.
		"Compute violations 'diff'"
		self computeViolationsDiffBetween: lastRules and: currentRules in: results for: checker.
		"Set last checker to current"
		last := checker ].
	^ results