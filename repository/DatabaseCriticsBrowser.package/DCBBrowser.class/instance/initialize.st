initialization
initialize
	super initialize.
	self title: 'Database Critics Browser'.
	self extent: 800@500.
	
	classifier := DCNoClassification new.
	classificationChooser := DCBClassificationChooser new.
	classificationChooser announcer weak
		when: DCBNewClassification send: #updateClassifierAccordingTo: to: self.
	rulesChooser := DCBRulesChooser new.
	rulesChooser announcer weak
		when: DCBNewRulesChosen send: #updateRulesAccordingTo: to: self.
	exportersChooser := DCBExportersChooser new.
	exportersChooser announcer weak
		when: DCBExportationSuccessful send: #exportationSucceed: to: self.
	thresholdsEditor := DCBThresholdsEditor new.
	rulesChooser listenToThresholdsEditor: thresholdsEditor.
	falsePositivesManagerEditor := DCBFalsePositivesManagerEditor new.
	falsePositivesManagerEditor announcer weak
		when: DCBFalsePositivesUpdated send: #falsePositivesUpdated: to: self.
	rulesChooser announcer weak
		when: DCBNewRulesChosen send: #newRulesChosen: to: falsePositivesManagerEditor.
	helpCenter := HelpCenterWidget opener: self helpPragma: #dcbHelp: iconPragma: #dcbIcon: openPragma: #dcbOpen:.
	shortcutsHelp := DCBShortcutsDocViewer new.
	shortcutsHelp widgets: ({ self } , self dependantWidgets).