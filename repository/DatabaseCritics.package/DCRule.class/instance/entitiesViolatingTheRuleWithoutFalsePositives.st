accessing
entitiesViolatingTheRuleWithoutFalsePositives
	^ self entitiesViolatingTheRule reject: [ :entity | (self falsePositives collect: #entityName) includes: entity name ]