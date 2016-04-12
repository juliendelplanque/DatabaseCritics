tests-buttons-actions
testCancelAction
	| test |
	test := false.
	widget cancelAction: [ test := true. ].
	widget cancelButton performAction.
	self assert: test