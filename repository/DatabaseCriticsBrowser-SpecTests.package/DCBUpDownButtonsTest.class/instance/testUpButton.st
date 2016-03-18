tests-accessing
testUpButton
	self assert: widget upButton class equals: ButtonModel.
	self assert: widget upButton label asString equals: 'Up'