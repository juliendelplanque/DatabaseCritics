visiting
visitGroup: aDCBGroup
	^ aDCBGroup children collect: [ :subgroup | subgroup accept: self ]