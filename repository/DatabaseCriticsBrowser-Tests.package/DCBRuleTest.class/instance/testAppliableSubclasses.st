test-appliable
testAppliableSubclasses
	DCBRule appliableSubclasses do: [ :class |
		self assert: class isApplicable ]