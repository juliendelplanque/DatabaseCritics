buttons-actions
upAction
	self listsChooser rightListSelectedItem ifNotNil: [ 
		| index |
		index := self listsChooser rightList selectedIndex.
		(index = 1)
			ifFalse: [ 
				self listsChooser rightListItems
					swap: index with: index - 1.
				self listsChooser rightList
					updateList;
					setSelectedIndex: index - 1 ] ].