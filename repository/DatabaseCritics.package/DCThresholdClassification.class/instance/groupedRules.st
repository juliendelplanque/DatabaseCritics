grouping
groupedRules
	^ self rules groupedBy: [ :rule |
		(rule isKindOf: DCRuleWithThreshold)
			ifTrue: [ 'Threshold rules' ]
			ifFalse: [ 'No threshold rules' ] ]