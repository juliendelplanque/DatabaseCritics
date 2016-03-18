tests-list-management
testClearList
	widget listItems: #(1 2 3).
	widget clearList.
	self assert: widget listItems size equals: 0