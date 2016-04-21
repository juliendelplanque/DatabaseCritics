*DatabaseCriticsBrowser-Standalone
generateModelFromFile: aFile
	^ PgDumpLoader new generateModelFrom: aFile contents