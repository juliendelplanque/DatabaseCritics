initialization
initializeWidgets
	leftLabel := self newLabel.
	leftList := self newList.
	rightLabel := self newLabel.
	rightList := self newList.
	
	self focusOrder
		add: leftList;
		add: rightList