entity-checking
check: aFAMIXView
	^ (((aFAMIXView queryOutgoing: FAMIXColumnToColumnAssociation)
			collect: [ :assoc | assoc to ownerTable ])
			select: [ :each | each class = FAMIXTable ]) asSet size = 1