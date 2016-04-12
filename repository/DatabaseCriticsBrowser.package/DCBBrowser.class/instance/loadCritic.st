critics-save/load
loadCritic
	| multiByteFileStream critic |
	multiByteFileStream := UIManager default
									fileOpen: 'Load a critic'
									extensions: #('critic')
									path: FileLocator workingDirectory.
	
	multiByteFileStream ifNil: [ ^ self ]. "If the reference is nil, just abort silently."
	
	"Now, we materialize the critic from the file chosen..."
	critic := DCCritic readFromFile: multiByteFileStream fullName.
	
	"...and then update what needs to be."
	DCRule falsePositivesManager: critic falsePositivesManager.
	modelChecker model: critic mooseModel.
	modelChecker rules: critic rulesApplied.
	classifier := critic classifier.
	classifier rules: critic rulesApplied.
	rulesChooser
		leftItems: (((rulesChooser leftListInitialItems collect: #class) \ (critic rulesApplied collect: #class))
									collect: #new);
		rightItems: critic rulesApplied.
	classificationChooser
		leftItems:(classificationChooser leftListInitialItems reject: [ :c | (classifier classificationsList collect: #class) includes: c class ]);
		rightItems: classifier classificationsList.
	DCThresholdsCenter current: critic thresholdsCenter.
	self updateSubwidgets.
