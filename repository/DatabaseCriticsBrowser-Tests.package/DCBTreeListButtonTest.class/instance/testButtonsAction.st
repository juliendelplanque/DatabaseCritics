tests-button-management
testButtonsAction
	| test |
	test := false.
	widget leftButtonAction: [ test := true ].
	widget leftButton performAction.
	self assert: test.
	test := false.
	widget rightButtonAction: [ test := true ].
	widget rightButton performAction.
	self assert: test.