tests-label-management
testTreeLabel
	widget treeLabel: 'Test'.
	self assert: widget treeLabel label asString equals: 'Test'