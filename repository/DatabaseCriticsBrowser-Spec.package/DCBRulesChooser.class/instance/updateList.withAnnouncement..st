private-helpers
updateList: aListModel withAnnouncement: aDCBThresholdChanged
	(aListModel listItems
		anySatisfy: [ :any | any class = aDCBThresholdChanged ruleClass ])
		ifTrue: [ 
			aListModel
				items: (aListModel listItems reject: [ :rule | rule class = aDCBThresholdChanged ruleClass ]) ]