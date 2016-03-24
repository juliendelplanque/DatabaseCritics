accessing
threshold: aValue
	self class ~= DCBThresholdsCenter ifTrue: [ "Ensure to not set the threshold of DCBThresholdsCenter."
		(aValue isKindOf: self thresholdClass) ifFalse: [ (DCBBadThresholdType threshold: aValue) signal ].
		DCBThresholdsCenter current set: aValue asThresholdFor: self ]