accessing
leftListInitialItems
	^ (DCBRuleClassification subclasses copyWithout: DCBNoClassification) asOrderedCollection collect: #new