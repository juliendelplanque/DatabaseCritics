tests-button-management
testButtonAction
	| test |
	test := false.
	widget buttonAction: [ test := true ].
	widget button performAction.
	self assert: test