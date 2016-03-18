announcements handling
updateRulesAccordingTo: anAnnouncement
	self modelChecker
		rules: anAnnouncement rules;
		checkEntities.
	classifier rules: self modelChecker rules.
	self updateSubwidgets