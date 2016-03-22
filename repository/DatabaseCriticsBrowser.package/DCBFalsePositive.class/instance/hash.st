comparing
hash
	"Hash must be redefined whenever = is redefined."

	^ self entityName hash bitXor: (self entityClass hash bitXor: self ruleClass hash)