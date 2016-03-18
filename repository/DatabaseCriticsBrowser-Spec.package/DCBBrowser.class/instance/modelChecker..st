accessing
modelChecker: anObject
	modelChecker := anObject.
	classifier rules: self modelChecker rules.
	treeListButton 
		treeRoots: classifier root children