tests-accessing
testAddAllButton
	self assert: widget addAllButton class equals: ButtonModel.
	self assert: widget addAllButton label asString equals: 'Add all'