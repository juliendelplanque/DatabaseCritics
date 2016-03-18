initialization
initializeWidgets
	listLabel := self newLabel.
	list := self newList.
	treeLabel := self newLabel.
	tree := self newTree.
	button := self newButton.
	
	self focusOrder
		add: tree;
		add: list;
		add: button.