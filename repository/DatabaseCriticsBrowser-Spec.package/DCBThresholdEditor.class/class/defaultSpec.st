specs
defaultSpec

	^ SpecLayout composed
		newColumn: [ :column |
			column
				newRow: [ :row |
					row
						add: #label;
						add: #inputField;
						add: #undefinedCheck ];
				add: #cancelApply ];
		yourself