initialization
initializePresenter
	super initializePresenter.
	self listsChooser
		displayBlock: [ :classificationClass | classificationClass classificationName ];
		sortingBlock: [ :classificationClassA :classificationClassB |
			classificationClassA classificationName < classificationClassB classificationName ].
	self listsChooser rightList whenSelectedItemChanged: [ :classification |
		self isReversedCheckbox enabled: classification isNotNil.
		classification ifNotNil: [ self isReversedCheckbox state: classification isReverseSort ] ].
	self isReversedCheckbox
		label: 'Reversed sort';
		whenChangedDo: [ 
			self listsChooser rightList selectedItem
				ifNotNil: [ self listsChooser rightList selectedItem isReverseSort: self isReversedCheckbox state ] ];
		state: false.