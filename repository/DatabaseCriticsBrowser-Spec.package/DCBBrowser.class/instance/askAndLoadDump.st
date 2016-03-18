dump-loading
askAndLoadDump
	| file |
	file := FileDialogWindow new
				validExtensions: #(.sql);
				openModal;
				openSelectedFile.
	file ifNotNil: [ 
		| model |
		[ model := self generateModelFromFile: file ] on: Error do: [
				UIManager default
					abort: 'Error while loading the dump, aborting. Your file may be malformed.'.
				^ self ].
		self modelChecker: (DCBModelChecker on: model).
		self updateConfigurationWidgets.
		self informationLabel clearAndDisplay: 'Dump loaded correctly.' during: 3 seconds ]