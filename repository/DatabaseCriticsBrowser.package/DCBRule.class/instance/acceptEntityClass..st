entity-acceptance
acceptEntityClass: anEntityClass
	"Returns true if the class correspond to the entity accepted by the rule. Else returns false."
	^ self acceptedClasses includes: anEntityClass