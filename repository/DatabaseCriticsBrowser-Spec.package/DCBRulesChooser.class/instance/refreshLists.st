private-helpers
refreshLists
	self refreshList: self listsChooser leftList withItems: self leftItems.
	self refreshList: self listsChooser rightList withItems: self rightItems.