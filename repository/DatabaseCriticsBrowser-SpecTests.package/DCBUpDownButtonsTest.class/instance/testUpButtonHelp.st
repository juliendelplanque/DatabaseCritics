tests-accessing
testUpButtonHelp
	widget upButtonHelp: 'Test help'.
	self assert: widget upButton help asString equals: 'Test help'