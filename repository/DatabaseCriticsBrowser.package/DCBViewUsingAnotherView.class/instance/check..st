entity-checking
check: aFAMIXView
	^ ((aFAMIXView queryOutgoing: FAMIXViewToTableAssociation) collect: #to)
			anySatisfy: [ :entity | entity isView ]