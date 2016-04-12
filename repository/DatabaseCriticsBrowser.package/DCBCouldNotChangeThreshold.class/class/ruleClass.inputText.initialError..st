instance creation
ruleClass: aClass inputText: aString initialError: anError
	^ self new
		ruleClass: aClass;
		inputText: aString;
		initialError: anError;
		yourself