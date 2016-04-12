buttons-actions
removeSelectedAction
	self listsChooser rightList selectedItem ifNotNil: [ 
		| selected index |
		selected := self listsChooser rightListSelectedItem.
		index := self listsChooser rightListSelectedIndex.
		self listsChooser
			rightListRemove: selected;
			leftListAdd: selected.
		(index = 1 and: [ index = (self listsChooser rightListSize + 1) ]) "Was it the last element in the list?"
			ifFalse: [ self listsChooser rightListSelectedIndex: index ]
			ifTrue: [ self listsChooser leftListSelectedIndex: 1 ] ].