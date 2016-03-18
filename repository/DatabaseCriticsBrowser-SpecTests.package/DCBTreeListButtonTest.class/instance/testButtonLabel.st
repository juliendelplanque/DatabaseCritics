tests-button-management
testButtonLabel
	widget buttonLabel: 'Test'.
	self assert: widget button label asString equals: 'Test'