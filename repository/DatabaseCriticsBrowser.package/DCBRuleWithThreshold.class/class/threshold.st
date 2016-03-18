accessing
threshold
	^ [ DCBThresholdsCenter soleInstance thresholdFor: self ] on: DCBNoThreshold do: [ ^ nil ]