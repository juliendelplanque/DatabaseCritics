tests-computing
testClassificationsList
	| classifier |
	classifier := DCBNoClassification new.
	self assert: classifier classificationsList isEmpty.
	classifier := DCBEntityTypeClassification new subgroupClassification: classifier; yourself.
	self assert: classifier classificationsList first equals: classifier.
	classifier := DCBSeverityClassification new subgroupClassification: classifier; yourself.
	self assert: classifier classificationsList equals: { classifier . classifier subgroupClassification }