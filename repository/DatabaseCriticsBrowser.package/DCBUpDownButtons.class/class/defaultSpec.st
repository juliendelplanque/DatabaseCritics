specs
defaultSpec

	^ SpecLayout composed
		newColumn: [ :column |
			column
				newRow: #upButton height: self buttonHeight;
				newRow: #downButton height: self buttonHeight ];
		yourself