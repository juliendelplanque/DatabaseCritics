tests-nesting
testCreateNestedClassificationFrom
	| classification |
	self 
		should: [ DCRuleClassification
						createNestedClassificationFrom: { DCNoClassification new } ]
		raise: DCForbiddenClassification.
		
	classification := DCRuleClassification
								createNestedClassificationFrom: #().
	self assert: classification class equals: DCNoClassification.
	classification := DCRuleClassification
								createNestedClassificationFrom: { DCSeverityClassification new .
																			DCEntityTypeClassification new.
																			DCThresholdClassification new }.
	self assert: classification class equals: DCSeverityClassification.
	self assert: classification subgroupClassification class equals: DCEntityTypeClassification.
	self
		assert: classification subgroupClassification subgroupClassification class
		equals: DCThresholdClassification.