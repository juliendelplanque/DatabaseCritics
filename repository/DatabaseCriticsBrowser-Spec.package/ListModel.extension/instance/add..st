*DatabaseCriticsBrowser-Spec
add: anItem
	| oldItems |
	oldItems := self listItems copy.
	self listItems add: anItem.
	self items: (self listItems sorted: sortingBlockHolder value).
	listAnnouncer announce: (ValueChanged oldValue: oldItems newValue: listHolder value)