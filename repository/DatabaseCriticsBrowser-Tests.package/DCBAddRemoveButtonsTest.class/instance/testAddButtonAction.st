tests-actions
testAddButtonAction
	| test |
	test := false.
	widget addButtonAction: [ test := true ].
	widget addButton performAction.
	self assert: test