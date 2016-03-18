tests-buttons-actions
testApplyAction
	| test |
	test := false.
	widget applyAction: [ test := true. ].
	widget applyButton performAction.
	self assert: test