tests-tree-management
testTreeChildrenBlock
	| block |
	block := [ :item | #() ].
	widget treeChildrenBlock: block.
	self assert: widget tree childrenBlock equals: block