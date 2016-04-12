writing
writeInFile: aFileReference
	FLSerializer
		serialize: self
		toFileNamed: aFileReference