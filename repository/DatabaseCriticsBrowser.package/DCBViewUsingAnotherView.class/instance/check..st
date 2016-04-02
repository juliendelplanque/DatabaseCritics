entity-checking
check: aFAMIXView
	^ (aFAMIXView queryOutgoing: FAMIXColumnToColumnAssociation)
			anySatisfy: [ :assoc | assoc to ownerTable isView ]