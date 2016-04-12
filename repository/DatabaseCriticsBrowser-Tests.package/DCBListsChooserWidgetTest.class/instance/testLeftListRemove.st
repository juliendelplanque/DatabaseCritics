tests-adding - removing
testLeftListRemove
	self assert: widget leftListItems isEmpty.
	widget leftListAdd: 'test'.
	widget leftListRemove: 'test'.
	self assert: widget leftListItems isEmpty.
	