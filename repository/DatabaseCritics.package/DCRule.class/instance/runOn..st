entity-checking
runOn: anEntity
	"Run the rule on the entity in parameter.
	If the the entity violate the rule it is added to the list of entities violating the rule, else nothing is done."
	(self check: anEntity)
		ifTrue: [ self addViolatingEntity: anEntity ]