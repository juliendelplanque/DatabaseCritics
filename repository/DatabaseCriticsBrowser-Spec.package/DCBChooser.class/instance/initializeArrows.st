initialization
initializeArrows
	self addRemoveWidget
		addButtonAction: [ self addSelectedAction ];
		removeButtonAction: [ self removeSelectedAction ].