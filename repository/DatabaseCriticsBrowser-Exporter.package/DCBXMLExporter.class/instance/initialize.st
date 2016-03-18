initialization
initialize
	super initialize.
	document := XMLDocument new.
	currentNode := XMLElement named: 'dbccritic'.
	document root: currentNode