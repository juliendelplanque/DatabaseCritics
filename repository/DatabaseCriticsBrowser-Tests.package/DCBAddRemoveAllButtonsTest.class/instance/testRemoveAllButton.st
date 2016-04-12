tests-accessing
testRemoveAllButton
	self assert: widget removeAllButton class equals: ButtonModel.
	self assert: widget removeAllButton label asString equals: 'Remove all'