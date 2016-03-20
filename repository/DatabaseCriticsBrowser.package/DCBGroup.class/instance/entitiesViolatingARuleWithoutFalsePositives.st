entities-retreiving
entitiesViolatingARuleWithoutFalsePositives
	"Return the entities violating a rule without false positives."
	^ (self rules collect: #entitiesViolatingTheRuleWithoutFalsePositives) flatten