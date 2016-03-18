buttons-actions
addSelectedAction
	self listsChooser leftList selectedItem ifNotNil: [ 
		| selected index |
		selected := self listsChooser leftListSelectedItem.
		index := self listsChooser leftListSelectedIndex.
		self listsChooser
			leftListRemove: selected;
			rightListAdd: selected.
		(index = 1 and: [ index = (self listsChooser leftListSize + 1) ]) "Was it the last element in the list?"
			ifFalse: [ self listsChooser leftListSelectedIndex: index ]
			ifTrue: [ self listsChooser rightListSelectedIndex: 1 ] ]