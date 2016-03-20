test-appliable
testAppliableSubclasses
	DCBRule applicableSubclasses do: [ :class |
		self assert: class isApplicable ]