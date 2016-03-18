selection
leftListSelectedIndex
	(self leftList selectedIndex = 0) ifTrue: [ DCBNoItemSelected signal ].
	^ self leftList selectedIndex