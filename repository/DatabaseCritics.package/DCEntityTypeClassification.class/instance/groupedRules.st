grouping
groupedRules
	| groupDict |
	groupDict := Dictionary new.
	(self rules flatCollect: #acceptedClasses) asSet
		do: [ :class | 
			groupDict at: class put: (self rules select: [ :rule | rule acceptEntityClass: class ]) ].
	^ groupDict