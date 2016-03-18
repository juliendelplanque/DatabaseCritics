tests-accessing
testRightListItems
	self assert: widget rightListItems isEmpty.
	self assert: widget rightListItems class equals: OrderedCollection