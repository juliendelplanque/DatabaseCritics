tests-selection
testLeftListSelectedIndex
	self assert: widget leftListItems isEmpty.
	widget leftListAdd: 'test'.
	self should: [ widget leftListSelectedIndex ] raise: DCBNoItemSelected.
	widget leftList setSelectedIndex: 1.
	self assert: widget leftListSelectedIndex equals: 1