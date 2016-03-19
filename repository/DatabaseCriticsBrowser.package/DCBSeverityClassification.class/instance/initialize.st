initialization
initialize
	super initialize.
	self sortBlock: [ :a :b | a > b ] "By default, most critic rules on top."