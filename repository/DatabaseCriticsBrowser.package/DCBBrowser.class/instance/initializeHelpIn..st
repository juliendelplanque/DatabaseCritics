initialization-menu
initializeHelpIn: group
	group addItem: [ :item | 
		item
			name: nil;
			description: 'Open the help';
			icon: HelpCenterWidget icon;
			action: [ self openHelp ] ].
	group addItem: [ :item | 
		item
			name: nil;
			description: 'Open shortcuts help';
			icon: DCBShortcutsDocViewer icon;
			action: [ self openShortcutsHelp ] ]