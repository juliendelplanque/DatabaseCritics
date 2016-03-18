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
							add: #button height: self toolbarHeight ] ];
		yourself