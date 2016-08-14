instance creation
rule: aRule inputText: aString initialError: anError
	^ self new
		rule: aRule;
		inputText: aString;
		initialError: anError;
		yourself