tests-label-management
testListLabel
	widget listLabel: 'Test'.
	self assert: widget listLabel label asString equals: 'Test'