initialization
initialize
	super initialize.
	self sortingBlock: [ :a :b | true ]. "Do not sort by default."
	self isReverseSort: false "We use normal sorting by default."