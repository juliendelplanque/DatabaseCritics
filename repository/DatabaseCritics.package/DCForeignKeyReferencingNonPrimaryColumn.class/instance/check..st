entity-checking
check: aFAMIXTable
	^ (aFAMIXTable queryOutgoing: FAMIXColumnToColumnAssociation)
			anySatisfy: [ :assoc | assoc from isFK and: [ assoc to isPK not ] ]