tests-model-checking
testCoherentRulesFor
	self
		assertCollection: ((modelChecker coherentRulesFor: FAMIXTable new) collect: #class)
		hasSameElements: { DCBTableUppercase . DCBMissingPrimaryKey }.
	
	self
		assertCollection: ((modelChecker coherentRulesFor: FAMIXColumn new) collect: #class)
		hasSameElements: { DCBColumnUppercase }.