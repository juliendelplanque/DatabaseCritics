announcements handling
updateClassifierAccordingTo: anAnnouncement
	classifier := anAnnouncement newClassification.
	classifier rules: self modelChecker rules.
	self updateSubwidgets