selection
rightListSelectedIndex
	(self rightList selectedIndex = 0) ifTrue: [ DCBNoItemSelected signal ].
	^ self rightList selectedIndex