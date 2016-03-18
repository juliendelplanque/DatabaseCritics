buttons-actions
applyAction
	super applyAction.
	self announce: (DCBNewClassification newClassification: self buildClassifier)