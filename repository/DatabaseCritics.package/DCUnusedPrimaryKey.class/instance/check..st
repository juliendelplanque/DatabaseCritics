entity-checking
check: aFAMIXTable
	^ aFAMIXTable pkColumns anySatisfy: [ :pk |
		(pk queryIncoming: FAMIXColumnToColumnAssociation) isEmpty ]