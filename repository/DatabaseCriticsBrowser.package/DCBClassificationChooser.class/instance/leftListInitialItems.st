accessing
leftListInitialItems
	^ (DCRuleClassification subclasses copyWithout: DCNoClassification) asOrderedCollection collect: #new