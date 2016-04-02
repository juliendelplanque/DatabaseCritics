dump-loading
askAndLoadDump
	| file |
	file := FileDialogWindow new
				validExtensions: #(.mse);
				openModal;
				openSelectedFile.
	file ifNotNil: [ 
		| model |
		[ model := self generateModelFromFile: file ] on: Error do: [ :err |
				UIManager default
					abort: 'Error while loading the mse, aborting. Your file may be malformed.'.
				^ self ].
		self modelChecker: (DCBModelChecker on: model).
		self updateConfigurationWidgets.
		self informationLabel clearAndDisplay: 'MSE loaded correctly.' during: 3 seconds ]