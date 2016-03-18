buttons-enable/disable
enableDisableButtons
	| enable |
	enable := self shouldButtonsBeEnabled.
	self cancelApplyWidget okButton enabled: enable.
	self cancelApplyWidget applyButton enabled: enable.
	self addRemoveWidget removeButton enabled: self listsChooser rightListItems isNotEmpty.
	self addRemoveWidget addButton enabled: self listsChooser leftListItems isNotEmpty.