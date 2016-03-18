tests-accessing
testSortingBlock
	| block |
	block := [ :itemA :itemB | itemA name < itemB name ].
	widget sortingBlock: block.
	self assert: widget leftList sortingBlock equals: block.
	self assert: widget rightList sortingBlock equals: block