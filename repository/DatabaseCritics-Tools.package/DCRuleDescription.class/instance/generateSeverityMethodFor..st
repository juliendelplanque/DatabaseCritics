generation
generateSeverityMethodFor: ruleClass
	ruleClass compile: ('severity
	^ {1} new' format: { self severity name }).
	(ruleClass >> #severity)
		protocol: 'accessing'