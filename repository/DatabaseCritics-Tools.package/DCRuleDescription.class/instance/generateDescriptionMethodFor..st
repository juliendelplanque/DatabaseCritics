generation
generateDescriptionMethodFor: ruleClass
	ruleClass compile: ('description
	^ ''{1}''' format: { self description }).
	(ruleClass >> #description)
		protocol: 'accessing'