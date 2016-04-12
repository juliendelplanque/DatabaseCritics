entities-retreiving
entitiesViolatingARule
	"Return the entities violating a rule."
	^ (self rules collect: #entitiesViolatingTheRule) flatten