generation
generateAcceptedClassMethodFor: ruleClass
	ruleClass compile: ('acceptedClasses
	^ { ' , ((self acceptedClasses asArray collect: #name) joinUsing: ' . ') , ' }').
	(ruleClass >> #acceptedClasses)
		protocol: 'entity-acceptance'