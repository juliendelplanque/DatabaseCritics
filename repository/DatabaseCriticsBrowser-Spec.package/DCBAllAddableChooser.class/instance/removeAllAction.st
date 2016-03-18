buttons-actions
removeAllAction
	self listsChooser
		rightListItems: OrderedCollection new;
		leftListItems: self leftListInitialItems;
		leftListSelectedIndex: 1