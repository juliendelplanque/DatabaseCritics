tests-accessing
testRule
	| rule |
	rule := DCRuleWithThreshold subclasses first new.
	rule resetThreshold.
	thresholdEditor rule: rule.
	self assert: thresholdEditor undefinedCheck state.
	
	rule threshold: 42.
	thresholdEditor rule: rule.
	self deny: thresholdEditor undefinedCheck state