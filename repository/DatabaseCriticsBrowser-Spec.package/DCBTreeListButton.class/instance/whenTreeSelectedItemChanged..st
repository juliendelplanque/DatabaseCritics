tree-management
whenTreeSelectedItemChanged: aBlock
	"If the item is nil, ignore it."
	tree whenSelectedItemChanged: [ :item | item ifNotNil: [ aBlock value: item ] ]