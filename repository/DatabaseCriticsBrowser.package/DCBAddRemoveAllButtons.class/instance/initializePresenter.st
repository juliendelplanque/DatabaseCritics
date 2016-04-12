initialization
initializePresenter
	super initializePresenter.
	self removeAllButton
		label: 'Remove all'.
	self addAllButton
		label: 'Add all'