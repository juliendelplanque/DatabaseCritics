visiting
visitRoot: aDCBRoot
	^ aDCBRoot children collect: [ :subgroup | subgroup accept: self ]