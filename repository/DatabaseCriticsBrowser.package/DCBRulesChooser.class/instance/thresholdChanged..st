announcement handling
thresholdChanged: aDCBThresholdChanged
	aDCBThresholdChanged newThreshold
		ifNil: [
			leftItems := leftItems reject: [ :rule | rule class = aDCBThresholdChanged rule class ].
			rightItems := rightItems reject: [ :rule | rule class = aDCBThresholdChanged rule class ] ]
		ifNotNil: [ 
			(self anyListElementClassIs: aDCBThresholdChanged rule class)
					ifFalse: [ leftItems add: aDCBThresholdChanged rule ] ].
	self refreshLists.
	self announceNewRulesSelected.
	self enableDisableButtons.