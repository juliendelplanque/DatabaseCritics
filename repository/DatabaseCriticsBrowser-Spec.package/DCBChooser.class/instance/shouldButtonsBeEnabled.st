testing
shouldButtonsBeEnabled
	"Logic help us to understand this one:
	
	Right list empty | Need one elements at least | Behavior wanted
	0                  0                            1
	0                  1                            1
	1                  0                            1
	1                  1                            0
	
	So this give the expression returned.
	"
	^ self listsChooser rightListItems isNotEmpty or: [ self needAtLeastOneElementInRightList not ]