writing
writeIn: aFileReference
	self assert: (aFileReference isKindOf: AbstractFileReference).
	(FileStream newFileNamed: aFileReference)
		<< self output