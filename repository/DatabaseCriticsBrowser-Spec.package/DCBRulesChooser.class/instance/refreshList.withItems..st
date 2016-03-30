private-helpers
refreshList: list withItems: items
	list
		items: items;
		sortingBlock: list sortingBlock;
		refreshListItems;
		updateList