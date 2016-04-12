button-action
unmarkFalsePositive
	falsePositivesList selectedItem ifNotNil: [ 
		falsePositiveToUnmark add: falsePositivesList selectedItem.
		self updateFalsePositivesList.
		falsePositivesList resetSelection ].