initialization-menu
initializeImportExportIn: group
	self class isStandalone "Add the button to load dump only in standalone mode."
		ifTrue: [ 
			group addItem: [ :item | 
				item
					name: nil;
					description: 'Load a MSE file.';
					icon: MooseIcons mooseImportMse;
					action: [ self askAndLoadDump ] ] ].
	group addItem: [ :item | 
		item
			name: nil;
			description: 'Export the report';
			icon: DCBExportersChooser icon;
			action: [ self openExporter ] ]