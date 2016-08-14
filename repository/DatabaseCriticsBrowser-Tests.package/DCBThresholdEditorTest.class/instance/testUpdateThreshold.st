tests-actions
testUpdateThreshold
	| rule announcement |
	rule := DCHighNumberOfColumns new.
	
	announcement := nil.
	thresholdEditor announcer
		when: DCBThresholdChanged , DCBCouldNotChangeThreshold do: [ :ann |
			announcement := ann ].
	
	thresholdEditor rule: rule.
	thresholdEditor undefinedCheck state: true.
	thresholdEditor updateThreshold.
	self assert: announcement isNotNil.
	self assert: announcement class equals: DCBThresholdChanged.
	self assert: announcement rule equals: rule.
	self assert: announcement newThreshold equals: nil.
	
	announcement := nil.
	thresholdEditor undefinedCheck state: false.
	thresholdEditor inputField text: '**'. "Bad threshold entry."
	thresholdEditor updateThreshold.
	self assert: announcement isNotNil.
	self assert: announcement class equals: DCBCouldNotChangeThreshold.
	
	announcement := nil.
	thresholdEditor undefinedCheck state: false.
	thresholdEditor inputField text: '42'.
	thresholdEditor updateThreshold.
	self assert: announcement isNotNil.
	self assert: announcement class equals: DCBThresholdChanged.
	self assert: announcement rule equals: rule.
	self assert: announcement newThreshold equals: 42
	