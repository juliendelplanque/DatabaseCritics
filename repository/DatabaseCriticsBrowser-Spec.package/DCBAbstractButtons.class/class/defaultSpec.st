specs
defaultSpec

	^ SpecLayout composed
		newRow: [ :row |
			row
				add: #leftButton;
				add: #rightButton ] height: self buttonHeight;
		yourself