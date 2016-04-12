tests-list-management
testListHasSelectedItem
	self deny: widget listHasSelectedItem.
	widget listItems: #(1 2 3).
	widget list setSelectedIndex: 1.
	self assert: widget listHasSelectedItem.
	widget listUnselectItem.
	self deny: widget listHasSelectedItem.