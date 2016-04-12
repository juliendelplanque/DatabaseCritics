initialization
initializeButtons
	treeListButton
		rightButtonLabel: 'Inspect';
		rightButtonAction: [ self inspectSelectedEntity ];
		rightButtonEnabled: false;
		leftButtonLabel: 'Mark as false positive';
		leftButtonAction: [ self markSelectedEntityAsFalsePositive ];
		leftButtonEnabled: false