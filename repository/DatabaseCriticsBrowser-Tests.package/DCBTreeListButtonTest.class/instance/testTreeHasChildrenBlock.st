tests-tree-management
testTreeHasChildrenBlock
	| block |
	block := [ :item | false ].
	widget treeHasChildrenBlock: block.
	self assert: widget tree hasChildrenBlock equals: block