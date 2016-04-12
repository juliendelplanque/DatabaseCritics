comparing
= anotherSeverity
	self assertSameKind: anotherSeverity.
	^ self level = anotherSeverity level and: [ self severityName = anotherSeverity severityName ]