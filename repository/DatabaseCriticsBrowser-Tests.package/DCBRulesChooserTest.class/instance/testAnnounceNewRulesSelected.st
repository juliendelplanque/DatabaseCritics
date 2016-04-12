tests-announcing
testAnnounceNewRulesSelected
	rulesChooser announcer
		when: DCBNewRulesChosen do: [ :ann | self assert: (ann rules collect: #className) equals: (rulesChooser rightItems collect: #className) ].
	rulesChooser announceNewRulesSelected.
	rulesChooser moveAllFromLeftToRightList.
	rulesChooser announceNewRulesSelected.