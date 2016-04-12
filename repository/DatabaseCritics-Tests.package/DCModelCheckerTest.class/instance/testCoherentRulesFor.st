tests-model-checking
testCoherentRulesFor
	self
		assertCollection: ((modelChecker coherentRulesFor: FAMIXTable new) collect: #class)
		hasSameElements: { DCTableUppercase . DCMissingPrimaryKey }.
	
	self
		assertCollection: ((modelChecker coherentRulesFor: FAMIXColumn new) collect: #class)
		hasSameElements: { DCColumnUppercase }.