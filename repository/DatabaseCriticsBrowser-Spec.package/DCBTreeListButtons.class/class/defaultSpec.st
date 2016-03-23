specs
defaultSpec
	^ SpecLayout composed
			newRow: [ :row |
				row
					newColumn: [ :leftCol |
						leftCol
							add: #treeLabel height: self toolbarHeight;
							add: #tree ];
					newColumn: [ :rightCol |
						rightCol
							add: #listLabel height: self toolbarHeight;
							add: #list;
							newRow: [ :buttonsRow |
								buttonsRow
									add: #leftButton;
									add: #rightButton ] height: self toolbarHeight ] ];
		yourself