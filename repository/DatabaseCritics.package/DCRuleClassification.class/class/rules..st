instance creation
rules: aListOfRules
	"Create a classification holding the list of rules given as parameter.
	 What you should be aware of is:
		1. Sorting block is default.
		2. #isReverseSort is false."
	
	^ self new
		rules: aListOfRules;
		yourself