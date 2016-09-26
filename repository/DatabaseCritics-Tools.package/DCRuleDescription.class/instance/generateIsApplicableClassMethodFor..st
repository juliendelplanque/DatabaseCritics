generation
generateIsApplicableClassMethodFor: ruleClass
	ruleClass class compile: 'isApplicable
	^ true'.
	(ruleClass class >> #isApplicable) protocol: 'testing'