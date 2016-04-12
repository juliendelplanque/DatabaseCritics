model-checking
coherentRulesFor: anEntity
	"Selects rules appliable on the entity and returns them."
	^ self rules select: [ :rule | rule acceptEntity: anEntity ]