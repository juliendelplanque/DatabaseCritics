instance creation
rules: aListOfRules sortingBlock: aTwoParametersBlock
	"Create a classification holding the list of rules given as parameter.
	 The sorting block is defined by aTwoParametersBlock.
	 What you should be aware of is:
		1. #isReverseSort is false."
	
	^ self rules: aListOfRules sortingBlock: aTwoParametersBlock reverseSort: false