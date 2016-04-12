buttons-enable/disable
enableDisableButtons
	super enableDisableButtons.
	updown upButton enabled: (self listsChooser rightList listItems size > 1).
	updown downButton enabled: (self listsChooser rightList listItems size > 1).