tests-accessing
testRemoveButton
	self assert: widget removeButton class equals: ButtonModel.
	self assert: widget removeButton equals: widget rightButton.
	self assert: widget removeButton label asString equals: 'Remove'