announcement handling
thresholdChanged: aDCBThresholdChanged
	aDCBThresholdChanged newThreshold
		ifNil: [
			initialLeftItems := initialLeftItems reject: [ :rule | rule class = aDCBThresholdChanged ruleClass ].
			initialRightItems := initialRightItems reject: [ :rule | rule class = aDCBThresholdChanged ruleClass ] ]
		ifNotNil: [ 
			(((initialLeftItems collect: #class) includes: aDCBThresholdChanged ruleClass)
				or: [ (initialRightItems collect: #class) includes: aDCBThresholdChanged ruleClass ])
					ifFalse: [ initialLeftItems add: aDCBThresholdChanged ruleClass new ] ].
	self refreshLists.
	self announceNewRulesSelected.
	self enableDisableButtons.