accessing
entitiesViolatingTheRuleWithoutFalsePositives
	^ self entitiesViolatingTheRule reject: [ :entity | 
			self class falsePositivesManager isEntity: entity markedAsFalsePositiveFor: self ]