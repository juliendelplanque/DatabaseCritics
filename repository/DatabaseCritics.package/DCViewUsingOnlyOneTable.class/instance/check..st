entity-checking
check: aFAMIXView
	^ ((aFAMIXView queryOutgoing: FAMIXColumnToColumnAssociation)
			collect: [ :assoc | assoc to ownerTable ]) asSet size < 2