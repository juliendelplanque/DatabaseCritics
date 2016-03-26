critics-save/load
saveCritic
	| reference |
	reference := UIManager default 
		fileSave: 'Save Database Critic' 
		initialAnswer: 'critic.critic'
		extensions: #('critic') 
		path: FileLocator workingDirectory.

	reference ifNil: [ ^ self ]. "If the reference is nil, just abort silently."

	DCBCritic new
		falsePositivesManager: DCBRule falsePositivesManager;
		mooseModel: modelChecker model;
		classifier: classifier;
		rulesApplied: classifier rules;
		thresholdsCenter: DCBThresholdsCenter current;
		writeInFile: reference.