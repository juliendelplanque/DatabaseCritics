initialization
initializeEntitiesList
	treeListButton
		whenListSelectedItemChanged: [ :item |
			treeListButton
				leftButtonEnabled: item isNotNil;
				rightButtonEnabled: item isNotNil ];
		listSortingBlock: [ :entityA :entityB | entityA name < entityB name ]