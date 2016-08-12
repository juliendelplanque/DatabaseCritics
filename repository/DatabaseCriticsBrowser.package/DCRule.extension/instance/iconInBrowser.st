*DatabaseCriticsBrowser
iconInBrowser
	"Defines the icon to use in the browser."
	(self entitiesViolatingTheRuleWithoutFalsePositives isEmpty)
		ifTrue: [ ^ Smalltalk ui icons testGreen ].
	^ Smalltalk ui icons testRed