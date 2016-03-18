tests-accessing
testDownButton
	self assert: widget downButton class equals: ButtonModel.
	self assert: widget downButton label asString equals: 'Down'