entity-checking
check: aFAMIXTable
	^ aFAMIXTable userEntities isEmpty and: [ aFAMIXTable fkColumns isEmpty ]