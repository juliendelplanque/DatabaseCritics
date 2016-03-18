tests-accessing
testAddButton
	self assert: widget addButton class equals: ButtonModel.
	self assert: widget addButton equals: widget leftButton