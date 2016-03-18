tests-accessing
testLeftListItems
	self assert: widget leftListItems isEmpty.
	self assert: widget leftListItems class equals: OrderedCollection