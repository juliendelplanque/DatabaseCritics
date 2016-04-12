announcement handling
thresholdChanged: aDCBThresholdChanged
	aDCBThresholdChanged newThreshold
		ifNil: [
			leftItems := leftItems reject: [ :rule | rule class = aDCBThresholdChanged ruleClass ].
			rightItems := rightItems reject: [ :rule | rule class = aDCBThresholdChanged ruleClass ] ]
		ifNotNil: [ 
			(self anyListElementClassIs: aDCBThresholdChanged ruleClass)
					ifFalse: [ leftItems add: aDCBThresholdChanged ruleClass new ] ].
	self refreshLists.
	self announceNewRulesSelected.
	self enableDisableButtons.