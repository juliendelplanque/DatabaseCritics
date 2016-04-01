exporters-writing
writeFilesFrom: exporters in: aDirectory
	exporters do: [ :exporter |
		| path |
		path := aDirectory / (self createFileNameFor: exporter).
		exporter writeIn: path.
		self announce: (DCBExportationSuccessful filePath: path fullName) ]