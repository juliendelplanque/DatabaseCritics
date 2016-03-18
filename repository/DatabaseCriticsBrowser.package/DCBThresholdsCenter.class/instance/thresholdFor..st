threshold management
thresholdFor: aClass
	^ classToThresholdDict
			at: aClass
			ifAbsent: [
				DCBNoThreshold signal: ('No threshold is available for {1}.' format: aClass asString) ]