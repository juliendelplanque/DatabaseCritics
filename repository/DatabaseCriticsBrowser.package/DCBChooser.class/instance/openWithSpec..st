api
openWithSpec: aSpec
	| result |
	result := super openWithSpec: aSpec.
	self listsChooser
		leftListItems: leftItems;
		rightListItems: rightItems.
	leftItems isNotEmpty
		ifTrue: [ self listsChooser leftList setSelectedIndex: 1 ]
		ifFalse: [ self listsChooser rightList setSelectedIndex: 1 ].

	^ result 