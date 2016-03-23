comparing
< aComparable
	"Answer whether the receiver is less than the argument."

	self assert: (aComparable class = self class).
	^ self entityName < aComparable entityName and: [ self entityClass < aComparable entityClass asString and: [ self ruleClass < aComparable ruleClass ] ]