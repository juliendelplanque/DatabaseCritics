entity-checking
check: aFAMIXView
	^ (aFAMIXView dependentTables) asSet size = 1