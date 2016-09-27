model-building
buildModelWith: aMooseModel
	FAMIXTable new
		name: 'stub';
		mooseModel: aMooseModel;
		isStub: true.
	
	FAMIXFunction new
		name: 'not_stub';
		mooseModel: aMooseModel.