*DatabaseCriticsBrowser
iconInBrowser
	"Defines the icon to use in the browser."
	(self entitiesViolatingTheRule isEmpty)
		ifTrue: [ ^ Smalltalk ui icons testGreen ].
	^ Smalltalk ui icons testRed