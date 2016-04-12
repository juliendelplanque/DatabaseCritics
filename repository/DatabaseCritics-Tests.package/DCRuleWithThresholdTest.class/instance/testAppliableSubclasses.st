test-appliable
testAppliableSubclasses
	DCRuleWithThreshold applicableSubclasses do: [ :class |
		self assert: class threshold isNotNil ]