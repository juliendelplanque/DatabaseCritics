tests-button-management
testButtonsLabel
	widget leftButtonLabel: 'Test'.
	self assert: widget leftButton label asString equals: 'Test'.
	widget rightButtonLabel: 'Test'.
	self assert: widget rightButton label asString equals: 'Test'