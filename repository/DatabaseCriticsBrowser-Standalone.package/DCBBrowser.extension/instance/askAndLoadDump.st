*DatabaseCriticsBrowser-Standalone
askAndLoadDump
	| file |
	file := 	UIManager default
					fileOpen: 'Load a SQL dump'
					extensions: #('sql')
					path: FileSystem workingDirectory.
	file ifNotNil: [ 
		| model |
		  model:= (Myrddin getInstance createModelWith: file name folder: '/tmp' xmlSchema: '/tmp/schema.xml') model.
		self modelChecker: (DCModelChecker on: model).
		self updateConfigurationWidgets.
		self informationLabel clearAndDisplay: 'PostgreSQL dump loaded correctly.' during: 3 seconds ]