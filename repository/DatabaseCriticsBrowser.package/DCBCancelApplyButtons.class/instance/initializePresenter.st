initialization
initializePresenter
	super initializePresenter.
	self cancelButton
		label: 'Cancel';
		help: 'Cancel this widget.'.
	self applyButton
		label: 'Apply';
		help: 'Apply actions.'.
	self okButton
		label: 'Ok';
		help: 'Apply and cancel.';
		action: [
			self applyButton performAction.
			self cancelButton performAction ]