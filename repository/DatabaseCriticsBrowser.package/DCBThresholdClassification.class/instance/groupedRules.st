grouping
groupedRules
	^ self rules groupedBy: [ :rule |
		(rule isKindOf: DCBRuleWithThreshold)
			ifTrue: [ 'Threshold rules' ]
			ifFalse: [ 'No threshold rules' ] ]