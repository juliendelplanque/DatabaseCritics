specs
defaultSpec

	^ SpecLayout composed
		newColumn: [ :column |
			column
				newRow: [ :row |
					row
						add: #addButton;
						add: #addAllButton;
						add: #removeButton;
						add: #removeAllButton ] height: self buttonHeight
			];
		yourself