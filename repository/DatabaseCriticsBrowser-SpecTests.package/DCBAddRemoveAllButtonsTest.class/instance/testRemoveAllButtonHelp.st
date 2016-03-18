tests-actions
testRemoveAllButtonHelp
	widget removeAllButtonHelp: 'Test help'.
	self assert: widget removeAllButton help asString equals: 'Test help'