initialization-menu
initializeMenu
	menu := MenuModel new
		addGroup: [ :group | self initializeImportExportIn: group ];
		addGroup: [ :group | self initializeToolsIn: group ];
		addGroup: [ :group | self initializeHelpIn: group ].
	menu applyTo: self