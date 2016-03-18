tests-grouping
testGroups
	| classifier |
	classifier := DCBNoClassification rules: rules.
	self assertCollection: classifier groups hasSameElements: rules