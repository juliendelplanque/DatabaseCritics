model-building
buildModelWith: aMooseModel
	| functionUnused functionUsed |
	functionUnused := FAMIXSQLFunction new
								name: 'foo_unused';
								mooseModel: aMooseModel;
								yourself.
	
	functionUsed := FAMIXSQLFunction new
							name: 'foo_used';
							mooseModel: aMooseModel;
							yourself.
	functionUnused addDependencyIfNotExistTo: functionUsed