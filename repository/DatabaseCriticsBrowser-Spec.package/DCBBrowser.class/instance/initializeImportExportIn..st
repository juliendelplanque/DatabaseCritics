initialization-menu
initializeImportExportIn: group
	self class isStandalone "Add the button to load dump only in standalone mode."
		ifTrue: [ 
			group addItem: [ :item | 
				item
					name: nil;
					description: 'Load a PostgreSQL dump';
					icon: DCBIcons current sqlfileIcon;
					action: [ self askAndLoadDump ] ] ].
	group addItem: [ :item | 
		item
			name: nil;
			description: 'Export the report';
			icon: DCBExportersChooser icon;
			action: [ self openExporter ] ]