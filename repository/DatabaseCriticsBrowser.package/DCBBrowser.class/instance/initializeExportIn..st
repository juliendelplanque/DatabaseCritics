initialization-menu
initializeExportIn: group
	<dcbMenuOrder: 10>
	group addItem: [ :item | 
		item
			name: nil;
			description: 'Export the report';
			icon: DCBExportersChooser icon;
			action: [ self openExporter ] ]