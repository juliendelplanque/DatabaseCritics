generation
generateNameMethodFor: ruleClass
	ruleClass compile: ('ruleName
	^ ''{1}''' format: { self ruleName }).
	(ruleClass >> #ruleName)
		protocol: 'accessing'