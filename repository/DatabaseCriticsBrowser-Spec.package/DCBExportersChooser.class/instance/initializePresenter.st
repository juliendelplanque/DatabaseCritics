initialization
initializePresenter
	super initializePresenter.
	self needAtLeastOneElementInRightList: true.
	self cancelApplyWidget
		applyButton label: 'Export'.
	self cancelApplyWidget
		okButton label: 'Export and quit'.
	self listsChooser
		displayBlock: [ :exporterClass | exporterClass exporterName ];
		sortingBlock: [ :exporterClassA :exporterClassB |
			exporterClassA exporterName < exporterClassB exporterName ]