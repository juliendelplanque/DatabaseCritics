initialization
initialize
	super initialize.
	
	self thresholdEditor announcer weak
		when: DCBSubwidgetWantToCancel send: #delete to: self;
		when: DCBThresholdChanged send: #forwardAnnouncement: to: self;
		when: DCBCouldNotChangeThreshold send: #couldNotChangeThreshold: to: self