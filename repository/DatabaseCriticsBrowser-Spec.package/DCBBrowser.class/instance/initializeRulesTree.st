initialization
initializeRulesTree
	treeListButton
		whenTreeSelectedItemChanged: [ :item | item whenSelectedInBrowser: self ];
		treeIconBlock: [ :item | item iconInBrowser ];
		treeChildrenBlock: [ :item | item children ];
		treeDisplayBlock: [ :item | item label ];
		treeHasChildrenBlock: [ :item | item isGroup ]