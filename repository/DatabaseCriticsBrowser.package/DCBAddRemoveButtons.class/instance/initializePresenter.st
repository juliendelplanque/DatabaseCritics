initialization
initializePresenter
	super initializePresenter.
	self removeButton
		label: 'Remove'.
	self addButton
		label: 'Add'