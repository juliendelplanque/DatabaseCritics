buttons-actions
addAllAction
	| itemsToAdd |
	itemsToAdd := self leftListItems.
	self listsChooser
		rightListItems: (self rightListItems union: self leftListItems);
		leftListItems: OrderedCollection new;
		rightListSelectedIndex: 1.