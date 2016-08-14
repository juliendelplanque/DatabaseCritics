initialization-menu
initializeFalsePositivesToolsIn: group
	<dcbMenuOrder: 30>
	group addItem: [ :item | 
		item
			name: nil;
			description: 'Open the false positives editor';
			icon: DCBFalsePositivesManagerEditor icon;
			action: [ self openFalsePositivesManagerEditor ] ].