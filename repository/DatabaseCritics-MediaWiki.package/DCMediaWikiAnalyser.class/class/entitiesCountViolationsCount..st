analysis
entitiesCountViolationsCount: checkers
	^ checkers collect: [ :c | 
		{ 
			c model name .
			c model entities size.
			(c rules select: #isViolated thenCollect: #entitiesViolatingTheRuleWithoutFalsePositives) flattened size } ].