buttons-action
markSelectedEntityAsFalsePositive
	| entity rule |
	treeListButton listHasSelectedItem ifFalse: [ ^ self ].
	
	entity := treeListButton listSelectedItem.
	rule := treeListButton treeSelectedItem.
	DCBRule falsePositivesManager mark: entity asFalsePositiveFor: rule.
	treeListButton updateTree