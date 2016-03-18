tests-accessing
testLeftLabelText
	widget leftLabelText: 'Test label'.
	self assert: widget leftLabel label equals: 'Test label'