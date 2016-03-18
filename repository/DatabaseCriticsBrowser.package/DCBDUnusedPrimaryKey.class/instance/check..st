entity-checking
check: aFAMIXTable
	^ aFAMIXTable pkColumns noneSatisfy: [ :pk | (pk queryIncoming: FAMIXColumnToColumnAssociation) notEmpty ]