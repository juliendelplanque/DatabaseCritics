*DatabaseCriticsBrowser
whenSelectedInBrowser: aDCBBrowser
	"Defines actions to perform when selected in the DCBBrowser."
	aDCBBrowser informationLabel clearCurrentMessage.
	aDCBBrowser treeListButton
		listUnselectItem;
		listItems: self entitiesViolatingARuleWithoutFalsePositives