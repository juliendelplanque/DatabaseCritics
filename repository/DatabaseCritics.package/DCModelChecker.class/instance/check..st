model-checking
check: anEntity
	"Check an entity given in parameter by selecting rules appliable and applying them on the entity."
	(self coherentRulesFor: anEntity)
		do: [ :rule | rule runOn: anEntity ]