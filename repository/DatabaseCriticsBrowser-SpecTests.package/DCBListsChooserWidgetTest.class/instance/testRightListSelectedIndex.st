tests-selection
testRightListSelectedIndex
	self assert: widget rightListItems isEmpty.
	widget rightListAdd: 'test'.
	self should: [ widget rightListSelectedIndex ] raise: DCBNoItemSelected.
	widget rightListSelectedIndex: 1.
	self assert: widget rightListSelectedIndex equals: 1