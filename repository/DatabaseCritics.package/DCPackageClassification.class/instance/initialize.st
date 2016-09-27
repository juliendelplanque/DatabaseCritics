initialization
initialize
	super initialize.
	"Sorted by package name."
	self sortingBlock: [ :packageA :packageB | packageA name < packageB name ]