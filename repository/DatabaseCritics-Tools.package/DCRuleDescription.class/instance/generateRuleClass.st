generation
generateRuleClass
	| ruleClass |
	ruleClass := self motherClass subclass: self ruleClassName
						instanceVariableNames: ''
						classVariableNames: ''
						package: self package.
	self
		generateNameMethodFor: ruleClass;
		generateDescriptionMethodFor: ruleClass;
		generateAcceptedClassMethodFor: ruleClass;
		generateSeverityMethodFor: ruleClass;
		generateIsApplicableClassMethodFor: ruleClass;
		generateCheckingMethodFor: ruleClass;
		generateCommentFor: ruleClass