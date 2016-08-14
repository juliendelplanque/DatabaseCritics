instance creation
on: aMooseModel withRulesSatisfying: aBlock
	^ (self on: aMooseModel)
			rules: ((DCRule applicableSubclasses collect: #new) select: aBlock);
			yourself