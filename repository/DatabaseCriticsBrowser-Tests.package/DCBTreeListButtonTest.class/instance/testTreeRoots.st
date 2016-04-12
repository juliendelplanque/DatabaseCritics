tests-tree-management
testTreeRoots
	widget treeRoots: #(1 2 3).
	self assertCollection: widget tree roots equals: #(1 2 3)