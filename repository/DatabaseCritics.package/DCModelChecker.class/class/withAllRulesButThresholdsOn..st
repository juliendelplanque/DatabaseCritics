instance creation
withAllRulesButThresholdsOn: aMooseModel
	^ self
			on: aMooseModel
			withRulesClassesSatisfying: [ :rule | rule useThreshold not ]