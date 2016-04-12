tests-selection
testRightListSelectedItem
	self assert: widget rightListItems isEmpty.
	widget rightListAdd: 'test'.
	self assert: widget rightListSelectedItem isNil.
	widget rightList setSelectedIndex: 1.
	self assert: widget rightListSelectedItem equals: 'test'