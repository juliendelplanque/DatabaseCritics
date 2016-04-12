critics-save/load
saveCritic
	| reference |
	reference := UIManager default 
		fileSave: 'Save Database Critic' 
		initialAnswer: 'critic.critic'
		extensions: #('critic') 
		path: FileLocator workingDirectory.

	reference ifNil: [ ^ self ]. "If the reference is nil, just abort silently."

	DCCritic new
		falsePositivesManager: DCRule falsePositivesManager;
		mooseModel: modelChecker model;
		classifier: classifier;
		rulesApplied: classifier rules;
		thresholdsCenter: DCThresholdsCenter current;
		writeInFile: reference.