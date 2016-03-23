initialization
initializeButtons
	unmarkButton
		label: 'Unmark false positive';
		action: [ self unmarkFalsePositive ].
	cancelApplyWidget
		cancelAction: [ self cancelAction ];
		applyAction: [ self applyAction ]