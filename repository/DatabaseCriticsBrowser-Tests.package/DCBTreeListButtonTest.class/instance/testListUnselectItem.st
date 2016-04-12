tests-list-management
testListUnselectItem
	widget listItems: #(1 2 3).
	widget list setSelectedIndex: 1.
	self assert: widget listHasSelectedItem.
	widget listUnselectItem.
	self deny: widget listHasSelectedItem.