testing
isConcrete
	[ self thresholdClass ]
		on: ShouldBeImplemented
		do: [ ^ false ].
	^ true