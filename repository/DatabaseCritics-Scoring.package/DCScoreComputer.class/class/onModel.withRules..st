instance creation
onModel: aMooseModel withRules: aRuleList
	^ self new
			model: aMooseModel;
			rules: aRuleList;
			yourself