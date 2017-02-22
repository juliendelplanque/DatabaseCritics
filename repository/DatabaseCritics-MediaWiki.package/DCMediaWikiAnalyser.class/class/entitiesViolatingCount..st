analysis
entitiesViolatingCount: checkers
	^ checkers collect: [ :c | { c model name . (c rules select: #isViolated thenCollect: #entitiesViolatingTheRuleWithoutFalsePositives) flattened size } ].