test-appliable
testApplicableSubclasses
	DCRule applicableSubclasses do: [ :class |
		self assert: class isApplicable ]