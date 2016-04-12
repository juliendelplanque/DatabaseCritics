initialization
initializePresenter
	self needAtLeastOneElementInRightList: false.
	self cancelApplyWidget
		applyAction: [ self applyAction ];
		cancelAction: [ self cancelAction ].
	self listsChooser
		leftLabelText: self leftListLabel;
		leftListItems: self leftListInitialItems;
		rightLabelText: self rightListLabel.
	self listsChooser leftList
		whenListChanged: [ self enableDisableButtons ].
	self listsChooser rightList
		whenListChanged: [ self enableDisableButtons ].

	self initializeArrows