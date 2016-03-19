comparing
= aComparable 
	"Compare the receiver with the argument and answer with true if the 
	receiver is equal to the argument. Otherwise answer false."
	self assert: (aComparable class = self class).
	^ self entityName = aComparable entityName and: [ self entityClass = aComparable entityClass and: [ self ruleClass = aComparable ruleClass ] ]