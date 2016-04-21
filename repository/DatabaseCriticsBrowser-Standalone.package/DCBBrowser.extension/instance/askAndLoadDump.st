*DatabaseCriticsBrowser-Standalone
askAndLoadDump
	| file |
	file := 	UIManager default
					fileOpen: 'Load a critic'
					extensions: #('sql')
					path: FileLocator home.
	file ifNotNil: [ 
		| model |
		[ model := self generateModelFromFile: file ] on: Error do: [ :err |
				UIManager default
					abort: 'Error while loading the PostgreSQL dump, aborting. Your file may be malformed.'.
				^ self ].
		self modelChecker: (DCModelChecker on: model).
		self updateConfigurationWidgets.
		self informationLabel clearAndDisplay: 'PostgreSQL dump loaded correctly.' during: 3 seconds ]