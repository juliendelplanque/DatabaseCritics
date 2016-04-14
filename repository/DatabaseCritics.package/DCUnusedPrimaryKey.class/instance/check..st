entity-checking
check: aFAMIXTable
	^ aFAMIXTable pkColumns anySatisfy: [ :pk |
		(pk referencedByColumns select: [ :ref | ref isKindOf: FAMIXFKToPKAssociation ]) isEmpty ]