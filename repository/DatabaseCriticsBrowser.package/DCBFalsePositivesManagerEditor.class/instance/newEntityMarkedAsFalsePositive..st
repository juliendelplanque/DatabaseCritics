announcements handling
newEntityMarkedAsFalsePositive: aDCBEntityMarkedAsFalsePositive
	| selected |
	selected := self rulesList selectedItem.
	self initializeLists.
	self rulesList setSelectedItem: selected