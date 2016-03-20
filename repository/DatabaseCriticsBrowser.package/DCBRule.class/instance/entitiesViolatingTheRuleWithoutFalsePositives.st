accessing
entitiesViolatingTheRuleWithoutFalsePositives
	^ self entitiesViolatingTheRule select: [ :entity | self class falsePositivesManager isEntity: entity markedAsFalsePositiveFor: self ]