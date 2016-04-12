instance creation
ruleClass: aClass newThreshold: anObject
	^ self new
		ruleClass: aClass;
		newThreshold: anObject;
		yourself