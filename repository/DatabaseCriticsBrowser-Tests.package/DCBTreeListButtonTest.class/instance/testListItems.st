tests-list-management
testListItems
	widget listItems: #(1 2 3).
	self assertCollection: widget listItems equals: #(1 2 3)