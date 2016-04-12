tests-accessing
testAddButtonHelp
	widget addButtonHelp: 'Test help'.
	self assert: widget addButton help equals: 'Test help'.
	self assert: widget addButton label asString equals: 'Add'