tests-accessing
testDownButtonHelp
	widget downButtonHelp: 'Test help'.
	self assert: widget downButton help asString equals: 'Test help'