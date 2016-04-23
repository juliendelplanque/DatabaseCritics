model-building
buildModelWith: aMooseModel
	| functionUsed |
	functionUsed := FAMIXSQLFunction new
							name: 'foo_used';
							mooseModel: aMooseModel;
							yourself.
	FAMIXSQLFunction new
		name: 'foo_unused';
		mooseModel: aMooseModel;
		addDependencyIfNotExistTo: functionUsed.