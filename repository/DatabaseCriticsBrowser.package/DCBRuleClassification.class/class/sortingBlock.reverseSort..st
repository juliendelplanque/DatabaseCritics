instance creation
sortingBlock: aTwoParametersBlock reverseSort: aBoolean
	"Create a classification holding an empty list of rules.
	 The sorting block and the way to sort the classification (normal=false,reversed=true) are
	 respectively defined by aTwoParametersBlock and aBoolean."
	
	^ self rules: #() sortingBlock: aTwoParametersBlock reverseSort: aBoolean