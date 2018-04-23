initialization
initialize
	super initialize.
	self
		rules: #();
		sortingBlock: [ :a :b | true ]; "Do not sort by default."
		isReverseSort: false "We use normal sorting by default."