tests-computing
testClassificationsList
	| classifier |
	classifier := DCNoClassification new.
	self assert: classifier classificationsList isEmpty.
	classifier := DCEntityTypeClassification new subgroupClassification: classifier; yourself.
	self assert: classifier classificationsList first equals: classifier.
	classifier := DCSeverityClassification new subgroupClassification: classifier; yourself.
	self assert: classifier classificationsList equals: { classifier . classifier subgroupClassification }