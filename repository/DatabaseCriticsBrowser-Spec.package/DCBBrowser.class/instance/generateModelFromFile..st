dump-loading
generateModelFromFile: aFile
	^ (PgDumpLoader fromString: aFile contents) model