initialization
initializePresenter
	super initializePresenter.
	self listsChooser
		displayBlock: [ :classificationClass | classificationClass classificationName ];
		sortingBlock: [ :classificationClassA :classificationClassB |
			classificationClassA classificationName < classificationClassB classificationName ]