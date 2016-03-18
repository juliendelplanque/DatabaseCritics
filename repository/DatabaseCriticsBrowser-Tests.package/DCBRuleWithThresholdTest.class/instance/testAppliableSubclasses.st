test-appliable
testAppliableSubclasses
	DCBRuleWithThreshold appliableSubclasses do: [ :class |
		self assert: class threshold isNotNil ]