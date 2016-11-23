helpers
writeResultsAsCSV: arrayOfArrays in: aFileReference
	| writeStream |
	writeStream := aFileReference writeStream.
	(NeoCSVWriter on: writeStream)
		nextPutAll: arrayOfArrays.
	writeStream close.