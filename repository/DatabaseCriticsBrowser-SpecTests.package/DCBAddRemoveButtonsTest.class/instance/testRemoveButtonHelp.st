tests-accessing
testRemoveButtonHelp
	widget removeButtonHelp: 'Test help'.
	self assert: widget removeButton help equals: 'Test help'