instance creation
withAllRulesOn: aMooseModel
	^ self on: aMooseModel withRules: (DCRule applicableSubclasses collect: #new)