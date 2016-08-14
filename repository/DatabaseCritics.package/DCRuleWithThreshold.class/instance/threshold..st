accessing
threshold: aThreshold
	(aThreshold isKindOf: self class thresholdClass) ifFalse: [ (DCBadThresholdType threshold: aThreshold) signal ].
	threshold := aThreshold