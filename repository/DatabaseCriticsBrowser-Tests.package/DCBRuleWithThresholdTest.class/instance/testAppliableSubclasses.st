test-appliable
testAppliableSubclasses
	DCBRuleWithThreshold applicableSubclasses do: [ :class |
		self assert: class threshold isNotNil ]