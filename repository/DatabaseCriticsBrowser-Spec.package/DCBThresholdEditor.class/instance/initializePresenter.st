initialization
initializePresenter
	super initializePresenter.
	self label label: 'Threshold:'.
	self inputField
		autoAccept: true.
	self undefinedCheck
		label: 'Set undefined';
		whenActivatedDo: [ self undefinedThreshold ];
		whenDesactivatedDo: [ self definedThreshold ].
	
	self cancelApply
		applyAction: [ self updateThreshold ];
		cancelAction: [ self announcer announce: (DCBSubwidgetWantToCancel subwidget: self) ]