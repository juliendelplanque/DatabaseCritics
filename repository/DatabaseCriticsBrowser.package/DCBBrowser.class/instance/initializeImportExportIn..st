initialization-menu
initializeImportExportIn: group
	<dcbMenuOrder: 10>
	self class isStandalone "Add the button to load dump only in standalone mode."
		ifTrue: [ 
			"This is not working yet, need to wait for the Famix model to be more stable."
			"group addItem: [ :item | 
				item
					name: nil;
					description: 'Load a MSE file.';
					icon: MooseIcons mooseImportMse;
					action: [ self askAndLoadDump ] ]" ].
	group addItem: [ :item | 
		item
			name: nil;
			description: 'Export the report';
			icon: DCBExportersChooser icon;
			action: [ self openExporter ] ]