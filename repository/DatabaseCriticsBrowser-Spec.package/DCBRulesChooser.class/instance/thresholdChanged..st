announcement handling
thresholdChanged: aDCBThresholdChanged
	aDCBThresholdChanged newThreshold
		ifNil: [
			self
				updateList: self listsChooser leftList withAnnouncement: aDCBThresholdChanged;
				updateList: self listsChooser rightList withAnnouncement: aDCBThresholdChanged ]
		ifNotNil: [ 
			(self anyListElementClassIs: aDCBThresholdChanged ruleClass)
				ifFalse: [ 
					self listsChooser leftList listItems
						add: aDCBThresholdChanged ruleClass new ] ].
	self refreshLists.
	self announceNewRulesSelected.
	self enableDisableButtons.
	initialLeftItems := self listsChooser leftList listItems.
	initialRightItems := self listsChooser rightList listItems.