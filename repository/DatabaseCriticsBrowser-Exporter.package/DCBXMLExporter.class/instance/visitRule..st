visiting
visitRule: aDCBRule
	| ruleNode |
	ruleNode := XMLElement name: 'rule'.
	ruleNode
		attributeAt: 'name' put: aDCBRule ruleName.
	aDCBRule entitiesViolatingTheRule do: [ :entity |
		| entityNode |
		entityNode := XMLElement name: 'entity'.
		entityNode
			attributeAt: 'name' put: entity name.
		ruleNode addNode: entityNode ].
	currentNode
		addNode: ruleNode.
		
						