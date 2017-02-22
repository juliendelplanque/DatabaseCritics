entity-checking
check: aFamixTable
	^ aFamixTable isStub not and: [aFamixTable pkColumns isEmpty]