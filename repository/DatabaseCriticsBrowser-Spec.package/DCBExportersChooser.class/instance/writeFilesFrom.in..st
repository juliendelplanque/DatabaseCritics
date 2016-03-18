exporters-writing
writeFilesFrom: exporters in: aDirectory
	exporters do: [ :exporter |
		| stream |
		stream := FileStream newFileNamed: (aDirectory / (self createFileNameFor: exporter)).
		stream
			<< exporter output;
			close.
		self announce: (DCBExportationSuccessful filePath: stream fullName) ]