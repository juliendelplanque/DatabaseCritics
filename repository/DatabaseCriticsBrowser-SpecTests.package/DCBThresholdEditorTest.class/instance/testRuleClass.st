tests-accessing
testRuleClass
	| ruleClass backupThreshold |
	ruleClass := DCBRuleWithThreshold subclasses first.
	backupThreshold := ruleClass threshold.
	ruleClass resetThreshold.
	thresholdEditor ruleClass: ruleClass.
	self assert: thresholdEditor undefinedCheck state.
	
	ruleClass threshold: 42.
	thresholdEditor ruleClass: ruleClass.
	self deny: thresholdEditor undefinedCheck state.
	backupThreshold
		ifNil: [ ruleClass resetThreshold ]
		ifNotNil: [ ruleClass threshold: backupThreshold ]