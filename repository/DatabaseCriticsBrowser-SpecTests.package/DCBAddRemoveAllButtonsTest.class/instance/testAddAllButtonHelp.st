tests-actions
testAddAllButtonHelp
	widget addAllButtonHelp: 'Test help'.
	self assert: widget addAllButton help asString equals: 'Test help'