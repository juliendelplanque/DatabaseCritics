*DatabaseCriticsBrowser
whenSelectedInBrowser: aDCBBrowser
	"Defines actions to perform when selected in the DCBBrowser."
	aDCBBrowser informationLabel clearAndDisplay: self description.
	aDCBBrowser treeListButton
		listUnselectItem;
		listItems: self entitiesViolatingTheRuleWithoutFalsePositives