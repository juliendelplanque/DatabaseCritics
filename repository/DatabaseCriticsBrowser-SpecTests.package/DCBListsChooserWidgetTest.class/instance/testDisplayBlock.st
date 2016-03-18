tests-accessing
testDisplayBlock
	| block |
	block := [ :item | item name ].
	widget displayBlock: block.
	self assert: widget leftList displayBlock equals: block.
	self assert: widget rightList displayBlock equals: block