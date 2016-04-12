instance creation
reverseSort: aBoolean
	"Create a classification holding an empty list of rules.
	 What you should be aware of is:
		1. The rules list is empty.
		2. Sorting block is default."
	
	^ self new
		isReverseSort: aBoolean;
		yourself