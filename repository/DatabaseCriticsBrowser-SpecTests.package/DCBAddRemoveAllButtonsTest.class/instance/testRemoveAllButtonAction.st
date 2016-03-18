tests-actions
testRemoveAllButtonAction
	| test |
	test := false.
	widget removeAllButtonAction: [ test := true ].
	widget removeAllButton performAction.
	self assert: test