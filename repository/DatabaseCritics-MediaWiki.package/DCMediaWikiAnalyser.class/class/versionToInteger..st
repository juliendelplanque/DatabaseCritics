helpers
versionToInteger: aString
	| intArray |
	self flag: #quickhack.
	intArray := aString splitOn: $..
	(intArray third size = 1)
		ifTrue: [ intArray at: 3 put: '0', intArray third ].
	^ (intArray joinUsing: '') asInteger 