instance creation
on: aMooseModel withRulesClassesSatisfying: aBlock
	^ (self on: aMooseModel)
			rules: ((DCRule applicableSubclasses select: aBlock) collect: #new);
			yourself