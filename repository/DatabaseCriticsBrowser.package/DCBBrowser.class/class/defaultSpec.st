specs
defaultSpec
	^ SpecLayout composed
		newColumn: [ :column |
			column
				add: #menu height: self toolbarHeight;
				add: #treeListButton;
				add: #informationLabel height: self toolbarHeight ];
		yourself