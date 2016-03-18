buttons-actions
applyAction
	super applyAction.
	self listsChooser rightListItems isEmpty
		ifTrue: [ UIManager default abort: 'You must choose at least one exporter.' ]
		ifFalse: [ 
			| directory exporters |
			directory := UIManager default chooseDirectory: 'Export in which directory?' from: self lastDirectory.
			directory ifNotNil: [
				self lastDirectory: directory.
				exporters := self buildExporters.
				exporters do: [ :exporter | self root accept: exporter ].
				self writeFilesFrom: exporters in: directory ] ]