critics-save/load
saveCritic
	| reference |
	self flag: 'This is not working anymore. It should be re-writted when the Famix model is stable.'.
	reference := UIManager default 
		fileSave: 'Save Database Critic' 
		initialAnswer: 'critic.critic'
		extensions: #('critic') 
		path: FileLocator workingDirectory.

	reference ifNil: [ ^ self ]. "If the reference is nil, just abort silently."

	DCCritic new
		"falsePositivesManager: DCRule falsePositivesManager;" "False positives are now hold by rules."
		mooseModel: modelChecker model;
		classifier: classifier;
		rulesApplied: classifier rules;
		"thresholdsCenter: DCThresholdsCenter current;" "Thresholds are now stored in rules."
		writeInFile: reference.