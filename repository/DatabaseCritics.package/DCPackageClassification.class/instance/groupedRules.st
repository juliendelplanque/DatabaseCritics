grouping
groupedRules
	^ self rules groupedBy: [ :rule | rule class package name ]