listening
listenToThresholdsEditor: aDCBThresholdsEditor
	aDCBThresholdsEditor announcer weak
		when: DCBThresholdChanged send: #thresholdChanged: to: self