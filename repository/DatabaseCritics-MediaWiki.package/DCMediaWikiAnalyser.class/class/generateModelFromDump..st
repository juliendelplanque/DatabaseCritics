model generation
generateModelFromDump: aFile
	Myrddin getInstance createModelWith: aFile fullName folder: '/tmp' xmlSchema: '/tmp/schema.xml'.
	^ Myrddin getInstance model