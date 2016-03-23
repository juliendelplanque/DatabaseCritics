false positives
falsePositivesManager
	^ FalsePositivesManager ifNil: [ self resetFalsePositivesManager ]