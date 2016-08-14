entity-checking
check: aSQLFunction
	aSQLFunction isStub
		ifTrue: [ ^ false  ].
	^ aSQLFunction queryAllLocalIncoming isEmpty