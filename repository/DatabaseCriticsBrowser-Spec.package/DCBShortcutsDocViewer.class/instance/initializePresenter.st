initialization
initializePresenter
	self widgetList
		displayBlock: [ :widget | self widgetTitle: widget ];
		icons: [ :widget | widget class icon ];
		whenSelectedItemChanged: [ :selectedWidget |
			selectedWidget ifNotNil: [ self shortcutsCenter: selectedWidget shortcutsCenter ] ];
		sortingBlock: [ :widgetA :widgetB |
			(self widgetTitle: widgetA) < (self widgetTitle: widgetB) ]