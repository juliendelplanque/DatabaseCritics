instance creation
sortingBlock: aTwoParametersBlock
	"Create a classification holding an empty list of rules.
	 The sorting block is defined by aTwoParametersBlock.
	 What you should be aware of is:
		1. #isReverseSort is false."
	
	^ self sortingBlock: aTwoParametersBlock reverseSort: false