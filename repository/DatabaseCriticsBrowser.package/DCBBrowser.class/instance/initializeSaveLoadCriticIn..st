initialization-menu
initializeSaveLoadCriticIn: group
	group addItem: [ :item | 
		item
			name: nil;
			description: 'Save the critic';
			icon: DCBIcons current savecriticIcon;
			action: [ self saveCritic ] ].
	group addItem: [ :item | 
		item
			name: nil;
			description: 'Load a critic';
			icon: DCBIcons current loadcriticIcon;
			action: [ self loadCritic ] ]