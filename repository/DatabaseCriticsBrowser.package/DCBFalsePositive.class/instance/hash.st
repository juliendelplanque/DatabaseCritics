comparing
hash
	"Hash must be redefined whenever = is redefined."

	^ self entityName hash xor: (self entityClass hash xor: self ruleClass)