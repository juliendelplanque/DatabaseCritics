initialization
initializeWidgets
	super initializeWidgets.
	addRemoveWidget := DCBAddRemoveButtons new.
	updown := DCBUpDownButtons new.
	isReversedCheckbox := self newCheckBox.