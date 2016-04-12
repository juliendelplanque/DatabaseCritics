test-appliable
testAppliableSubclasses
	DCRule applicableSubclasses do: [ :class |
		self assert: class isApplicable ]