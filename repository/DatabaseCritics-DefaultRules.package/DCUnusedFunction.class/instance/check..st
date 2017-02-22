entity-checking
check: aSQLFunction
	aSQLFunction isStub
		ifTrue: [ ^ false ].
	^ (aSQLFunction calledFromColumns
		union:
			(aSQLFunction calledFromExpressions
				union: (aSQLFunction calledFromFunctions union: aSQLFunction calledFromTriggers)))
		isEmpty