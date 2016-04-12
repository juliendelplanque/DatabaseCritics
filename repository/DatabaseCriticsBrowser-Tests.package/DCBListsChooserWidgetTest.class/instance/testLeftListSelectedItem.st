tests-selection
testLeftListSelectedItem
	self assert: widget leftListItems isEmpty.
	widget leftListAdd: 'test'.
	self assert: widget leftListSelectedItem isNil.
	widget leftListSelectedIndex: 1.
	self assert: widget leftListSelectedItem equals: 'test'