specs
defaultSpec

	^ SpecLayout composed
		newColumn: [ :column |
			column
				newRow: #listsChooser;
				newRow: #addRemoveWidget height: self toolbarHeight;
				newRow: #cancelApplyWidget height: self toolbarHeight ];
		yourself