tests-actions
testUpdateThreshold
	| ruleClass backupThreshold announcement |
	ruleClass := DCBHighNumberOfColumns.
	backupThreshold := ruleClass threshold.
	
	announcement := nil.
	thresholdEditor announcer
		when: DCBThresholdChanged , DCBCouldNotChangeThreshold do: [ :ann |
			announcement := ann ].
	
	thresholdEditor ruleClass: ruleClass.
	thresholdEditor undefinedCheck state: true.
	thresholdEditor updateThreshold.
	self assert: announcement isNotNil.
	self assert: announcement class equals: DCBThresholdChanged.
	self assert: announcement ruleClass equals: ruleClass.
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
	self assert: announcement ruleClass equals: ruleClass.
	self assert: announcement newThreshold equals: 42.
	
	backupThreshold
		ifNil: [ ruleClass resetThreshold ]
		ifNotNil: [ ruleClass threshold: backupThreshold ]
	