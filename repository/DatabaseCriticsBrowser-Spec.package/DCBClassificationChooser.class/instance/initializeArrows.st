initialization
initializeArrows
	super initializeArrows.
	updown
		upButtonAction: [ self upAction ];
		downButtonAction: [ self downAction ];
		upButtonHelp: 'Move up classification chosen.';
		downButtonHelp: 'Move down classification chosen.'.
	addRemoveWidget
		addButtonHelp: 'Add classification to the selection.';
		removeButtonHelp: 'Remove classification from the selection.'