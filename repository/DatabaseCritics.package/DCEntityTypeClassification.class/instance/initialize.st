initialization
initialize
	super initialize.
	"Sort alphabetically."
	self sortingBlock: [ :entityClassA :entityClassB | entityClassA name < entityClassB name ]