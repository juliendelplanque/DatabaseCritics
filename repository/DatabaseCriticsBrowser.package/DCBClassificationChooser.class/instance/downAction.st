buttons-actions
downAction
	self listsChooser rightListSelectedItem ifNotNil: [ 
		| index |
		index := self listsChooser rightList selectedIndex.
		(index = self listsChooser rightList listItems size)
			ifFalse: [ 
				self listsChooser rightListItems
					swap: index with: index + 1.
				self listsChooser rightList
					updateList;
					setSelectedIndex: index + 1 ] ].