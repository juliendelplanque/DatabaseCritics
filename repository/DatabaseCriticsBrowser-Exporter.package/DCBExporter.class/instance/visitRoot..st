visiting
visitRoot: aDCBRoot
	aDCBRoot children do: [ :subgroup | subgroup accept: self ]