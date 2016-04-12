instance creation
rules: aListOfRules sortingBlock: aTwoParametersBlock reverseSort: aBoolean
	"Create a classification holding the list of rules given as parameter.
	 The sorting block and the way to sort the classification (normal=false,reversed=true) are
	 respectively defined by aTwoParametersBlock and aBoolean."
	
	^ self new
		rules: aListOfRules;
		sortingBlock: aTwoParametersBlock;
		isReverseSort: aBoolean;
		yourself