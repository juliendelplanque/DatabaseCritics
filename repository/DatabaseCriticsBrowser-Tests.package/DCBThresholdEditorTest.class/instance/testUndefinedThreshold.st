tests-actions
testUndefinedThreshold
	thresholdEditor undefinedThreshold.
	self assert: thresholdEditor inputField text equals: thresholdEditor undefinedText.
	self deny: thresholdEditor inputField enabled