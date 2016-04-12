tests-accessing
testUpButtonAction
	| test |
	test := false.
	widget upButtonAction: [ test := true ].
	widget upButton performAction.
	self assert: test