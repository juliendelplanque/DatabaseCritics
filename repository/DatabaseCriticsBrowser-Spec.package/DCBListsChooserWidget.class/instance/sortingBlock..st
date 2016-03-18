accessing
sortingBlock: aBlock
	"Set up the sort block for the two lists."
	self leftList sortingBlock: aBlock.
	self rightList sortingBlock: aBlock.