initialization
initializeArrows
	super initializeArrows.
	addRemoveWidget
		removeAllButtonAction: [ self removeAllAction ];
		addAllButtonAction: [ self addAllAction ]