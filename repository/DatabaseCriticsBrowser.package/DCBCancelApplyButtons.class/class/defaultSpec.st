specs
defaultSpec

	^ SpecLayout composed
		newRow: [ :row |
			row
				add: #cancelButton;
				add: #applyButton;
				add: #okButton ] height: self toolbarHeight;
		yourself