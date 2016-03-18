buttons-actions
addAllAction
	self listsChooser
		rightListItems: self leftListInitialItems;
		leftListItems: OrderedCollection new;
		rightListSelectedIndex: 1.