tests-actions
testRemoveButtonAction
	| test |
	test := false.
	widget removeButtonAction: [ test := true ].
	widget removeButton performAction.
	self assert: test