initialization-menu
initializeMenu
	menu := MenuModel new.
	self menuInitializerSelectors do: [ :selector |
			menu addGroup: [ :group |
				self perform: selector with: group ] ].
	menu applyTo: self