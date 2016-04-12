tests-accessing
testOkButton
	| test1 test2 |
	test1 := false.
	test2 := false.
	widget cancelAction: [ test1 := true ].
	widget applyAction: [ test2 := true ].
	widget okButton performAction.
	self assert: test1.
	self assert: test2