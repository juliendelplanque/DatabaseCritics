specs
defaultSpec
	self flag: #todo.
	^ SpecLayout composed
		newColumn: [ :column |
			column
				add: #menu height: self toolbarHeight;
				add: #treeListButton;
				"newRow: [ :row |
					row
						newColumn: [ :leftCol |
							leftCol
								add: #rulesLabel height: self toolbarHeight;
								add: #rulesTree ];
						newColumn: [ :rightCol |
							rightCol
								add: #entitiesLabel height: self toolbarHeight;
								add: #entitiesList;
								add: #inspectButton height: self toolbarHeight ] ];"
				add: #informationLabel height: self toolbarHeight ];
		yourself