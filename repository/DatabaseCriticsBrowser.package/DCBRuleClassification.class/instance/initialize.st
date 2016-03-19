initialization
initialize
	super initialize.
	self sortBlock: [ :a :b | true ] "Do not sort by default."