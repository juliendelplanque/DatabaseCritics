*DatabaseCriticsBrowser-Standalone
worldMenuOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Database Critics')
		order: 40;
		icon: DCBIcons current databaseIcon;
		action: [ self openCentered ];
		withSeparatorAfter