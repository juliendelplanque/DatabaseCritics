tests-threshold management
testResetThresholdOf
	thresholdCenter set: 42 asThresholdFor: Object.
	self assert: (thresholdCenter thresholdFor: Object) equals: 42.
	thresholdCenter resetThresholdOf: Object.
	self should: [ thresholdCenter thresholdFor: Object ] raise: DCBNoThreshold