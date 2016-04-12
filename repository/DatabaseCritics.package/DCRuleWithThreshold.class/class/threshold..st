accessing
threshold: aValue
	self class ~= DCThresholdsCenter ifTrue: [ "Ensure to not set the threshold of DCBThresholdsCenter."
		(aValue isKindOf: self thresholdClass) ifFalse: [ (DCBadThresholdType threshold: aValue) signal ].
		DCThresholdsCenter current set: aValue asThresholdFor: self ]