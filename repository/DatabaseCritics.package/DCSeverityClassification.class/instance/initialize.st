initialization
initialize
	super initialize.
	"Sorted by level of severity."
	self sortingBlock: [ :severityA :severityB | severityA level < severityB level ]