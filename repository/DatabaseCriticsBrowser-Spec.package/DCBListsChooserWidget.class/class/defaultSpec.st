specs
defaultSpec

	^ SpecLayout composed
		newColumn: [ :column |
			column
				newRow: [ :row | 
					row
						add: #leftLabel;
						add: #rightLabel ] height: self toolbarHeight;
				newRow: [ :row | 
					row
						add: #leftList;
						add: #rightList ] ];
		yourself