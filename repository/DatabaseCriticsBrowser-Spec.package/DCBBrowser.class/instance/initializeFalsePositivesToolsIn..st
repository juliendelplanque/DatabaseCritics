initialization-menu
initializeFalsePositivesToolsIn: group
	group addItem: [ :item | 
		item
			name: nil;
			description: 'Open the false positives editor';
			icon: DCBFalsePositivesManagerEditor icon;
			action: [ self openFalsePositivesManagerEditor ] ].