tests-adding - removing
testRightListAdd
	self assert: widget rightListItems isEmpty.
	widget rightListAdd: 'test'.
	self assert: widget rightListItems isNotEmpty.
	self assert: widget rightListItems first equals: 'test'