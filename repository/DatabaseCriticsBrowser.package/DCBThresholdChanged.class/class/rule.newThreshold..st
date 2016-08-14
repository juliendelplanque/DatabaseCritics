instance creation
rule: aRule newThreshold: anObject
	^ self new
		rule: aRule;
		newThreshold: anObject;
		yourself