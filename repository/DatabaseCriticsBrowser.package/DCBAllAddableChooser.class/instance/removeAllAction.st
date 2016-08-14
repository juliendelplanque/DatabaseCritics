buttons-actions
removeAllAction
	| itemsToRemove |
	itemsToRemove := self rightListItems.
	self listsChooser
		rightListItems: OrderedCollection new;
		leftListItems: (self leftListItems union: itemsToRemove);
		leftListSelectedIndex: 1