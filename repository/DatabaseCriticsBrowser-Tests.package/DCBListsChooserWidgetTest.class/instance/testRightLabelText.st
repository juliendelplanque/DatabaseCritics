tests-accessing
testRightLabelText
	widget rightLabelText: 'Test label'.
	self assert: widget rightLabel label equals: 'Test label'