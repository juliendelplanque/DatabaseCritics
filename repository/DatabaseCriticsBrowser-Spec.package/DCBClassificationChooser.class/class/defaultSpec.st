specs
defaultSpec

	^ SpecLayout composed
		newColumn: [ :column |
			column
				newRow: [ :row |
					row
						newColumn: [ :subColumn1 |
							subColumn1 
								newRow: #listsChooserLeftLabel height: self toolbarHeight;
								newRow: #listsChooserLeftList;
								newRow: #addRemoveWidget height: self toolbarHeight ];
						newColumn: [ :subColumn1 |
							subColumn1 
								newRow: #listsChooserRightLabel height: self toolbarHeight;
								newRow: #listsChooserRightList;
								newRow: #updown height: self buttonHeight * 2 ] ];
				newRow: #cancelApplyWidget height: self buttonHeight ];
		yourself