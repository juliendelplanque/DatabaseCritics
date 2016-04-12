sorting
sort: aCollection
	"Sort or reverse-sort the collection given as parameter according to #isReverseSort instance variable
	 and return the result."
	| sorted |
	sorted := aCollection sorted: self sortingBlock.
	self isReverseSort
		ifTrue: [ ^ sorted reversed ].
	^ sorted