tests-adding - removing
testRightListRemove
	self assert: widget rightListItems isEmpty.
	widget rightListAdd: 'test'.
	widget rightListRemove: 'test'.
	self assert: widget rightListItems isEmpty.