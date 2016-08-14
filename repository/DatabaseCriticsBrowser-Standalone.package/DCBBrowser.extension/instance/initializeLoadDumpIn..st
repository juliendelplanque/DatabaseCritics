*DatabaseCriticsBrowser-Standalone
initializeLoadDumpIn: group
	<dcbMenuOrder: 5>
	group addItem: [ :item | 
		item
			name: nil;
			description: 'Load a SQL dump.';
			icon: DCBIcons current sqlfileIcon;
			action: [ self askAndLoadDump ] ]