initialization
initializeWidgets
	listLabel := self newLabel.
	list := self newList.
	treeLabel := self newLabel.
	tree := self newTree.
	leftButton := self newButton.
	rightButton := self newButton.
	
	self focusOrder
		add: tree;
		add: list;
		add: leftButton;
		add: rightButton.