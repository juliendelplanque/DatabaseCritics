tests-actions
testAddAllButtonAction
	| test |
	test := false.
	widget addAllButtonAction: [ test := true ].
	widget addAllButton performAction.
	self assert: test