tests-actions
testDefinedThreshold
	thresholdEditor definedThreshold.
	self assert: thresholdEditor inputField text equals: thresholdEditor emptyDefinedText.
	self assert: thresholdEditor inputField enabled