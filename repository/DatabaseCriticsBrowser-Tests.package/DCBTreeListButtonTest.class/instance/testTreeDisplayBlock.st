tests-tree-management
testTreeDisplayBlock
	| block |
	block := [ :item | 'test' ].
	widget treeDisplayBlock: block.
	self assert: widget tree displayBlock equals: block