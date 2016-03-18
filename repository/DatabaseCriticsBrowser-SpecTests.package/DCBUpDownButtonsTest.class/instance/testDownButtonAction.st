tests-accessing
testDownButtonAction
	| test |
	test := false.
	widget downButtonAction: [ test := true ].
	widget downButton performAction.
	self assert: test