instance creation
widgets: aComposableWidgetList
	self widgetList
		items: (aComposableWidgetList select: [ :widget | widget shortcutsCenter hasShortcutsDocumentation ])