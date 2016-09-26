generation
generateCheckingMethodFor: ruleClass
	| selector |
	selector := ruleClass compile: self checkSourceCode.
	self assert: selector = #check:.
	(ruleClass >> #check:)
		protocol: 'entity-checking'