initialization
initialize
	super initialize.
	self clearEntitiesViolatingTheRule.
	self falsePositives: OrderedCollection new