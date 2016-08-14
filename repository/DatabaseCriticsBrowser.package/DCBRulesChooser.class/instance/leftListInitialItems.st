accessing
leftListInitialItems
	^ (DCRule applicableSubclasses collect: #new) asOrderedCollection reject: [ :rule | (rule isKindOf: DCRuleWithThreshold) and: [ rule isThresholdSet not ] ]