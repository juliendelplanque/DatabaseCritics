initialization-menu
initializeToolsIn: group
	group addItem: [ :item | 
			item
				name: nil;
				description: 'Select rules to use';
				icon: DCBRulesChooser icon;
				action: [ self openRulesChooser ] ].
	group addItem: [ :item | 
			item
				name: nil;
				description: 'Set up classification';
				icon: DCBClassificationChooser icon;
				action: [ self openClassifierChooser ] ].
	group addItem: [ :item | 
			item
				name: nil;
				description: 'Edit thresholds';
				icon: DCBThresholdsEditor icon;
				action: [ self openThresholdsEditor ] ]