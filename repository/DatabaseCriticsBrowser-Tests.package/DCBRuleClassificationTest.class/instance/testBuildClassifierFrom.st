tests-instance creation
testBuildClassifierFrom
	| classifier |
	classifier := DCBRuleClassification buildClassifierFrom: { DCBSeverityClassification . DCBEntityTypeClassification }.
	self assert: classifier class equals: DCBSeverityClassification.
	self assert: classifier subgroupClassification class equals: DCBEntityTypeClassification.
	
	classifier := DCBRuleClassification buildClassifierFrom: #().
	self assert: classifier class equals: DCBNoClassification