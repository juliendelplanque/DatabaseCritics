entity-checking
check: aFAMIXColumn
	^ (aFAMIXColumn name matchesRegex: '.*_id.*') and: [ aFAMIXColumn isPK not and: [ aFAMIXColumn isFK not ] ]