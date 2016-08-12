visiting
visitRule: aDCBRule
	| ruleNode violatingNodes falsePositiveNodes|
	ruleNode := XMLElement name: 'rule'.
	ruleNode
		attributeAt: 'name' put: aDCBRule ruleName.
	violatingNodes := aDCBRule entitiesViolatingTheRule collect: [ :entity |
		(XMLElement named: 'entity')
			attributeAt: 'name' put: entity name;
			attributeAt: 'type' put: entity className;
			yourself ].
	ruleNode addNode: ((XMLElement named: 'entities') addNodes: violatingNodes; yourself).
	falsePositiveNodes := aDCBRule falsePositives collect: [ :falsePositive |
		(XMLElement named: 'falsepositive')
			attributeAt: 'name' put: falsePositive entityName;
			attributeAt: 'type' put: falsePositive entityClass name;
			yourself ].
	ruleNode addNode: ((XMLElement named: 'falsepositives') addNodes: falsePositiveNodes; yourself).
	^ ruleNode
		
						