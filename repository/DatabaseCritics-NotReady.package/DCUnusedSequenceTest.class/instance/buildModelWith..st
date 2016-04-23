model-building
buildModelWith: aMooseModel
	| sequenceUsed sequenceUnused table |
	sequenceUsed := FAMIXSequence new
							name: 'foo_used';
							mooseModel: aMooseModel;
							yourself.
	sequenceUnused := FAMIXSequence new
								name: 'foo_unused';
								mooseModel: aMooseModel;
								yourself.
	
	table := FAMIXTable new
					table: 'bar';
					mooseModel: aMooseModel;
					yourself