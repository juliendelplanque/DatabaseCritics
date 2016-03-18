tests-adding - removing
testLeftListAdd
	self assert: widget leftListItems isEmpty.
	widget leftListAdd: 'test'.
	self assert: widget leftListItems isNotEmpty.
	self assert: widget leftListItems first equals: 'test'