tests-nesting
testCreateNestedClassificationFrom
	| classification |
	self 
		should: [ DCBRuleClassification
						createNestedClassificationFrom: { DCBNoClassification new } ]
		raise: DCBForbiddenClassification.
		
	classification := DCBRuleClassification
								createNestedClassificationFrom: #().
	self assert: classification class equals: DCBNoClassification.
	classification := DCBRuleClassification
								createNestedClassificationFrom: { DCBSeverityClassification new .
																			DCBEntityTypeClassification new.
																			DCBThresholdClassification new }.
	self assert: classification class equals: DCBSeverityClassification.
	self assert: classification subgroupClassification class equals: DCBEntityTypeClassification.
	self
		assert: classification subgroupClassification subgroupClassification class
		equals: DCBThresholdClassification.