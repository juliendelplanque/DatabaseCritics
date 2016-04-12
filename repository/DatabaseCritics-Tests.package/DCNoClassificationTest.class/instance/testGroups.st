tests-grouping
testGroups
	| classifier |
	classifier := DCNoClassification rules: rules.
	self assertCollection: classifier groups hasSameElements: rules