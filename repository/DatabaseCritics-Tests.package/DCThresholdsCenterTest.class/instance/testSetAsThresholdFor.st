tests-threshold management
testSetAsThresholdFor
	self should: [ thresholdCenter thresholdFor: Object ] raise: DCNoThreshold.
	thresholdCenter set: 42 asThresholdFor: Object.
	self assert: (thresholdCenter thresholdFor: Object) equals: 42