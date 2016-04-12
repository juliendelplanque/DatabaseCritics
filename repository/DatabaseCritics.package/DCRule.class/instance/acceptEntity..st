entity-acceptance
acceptEntity: anEntity
	"Returns true if the entity can be accepted by the rule. Else returns false."
	^ self acceptEntityClass: anEntity class