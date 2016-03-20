as yet unclassified
falsePositivesManager
	^ FalsePositivesManager ifNil: [ FalsePositivesManager := DCBFalsePositivesManager new ]