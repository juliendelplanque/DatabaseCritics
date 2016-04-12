accessing - icons
databaseIcon
	"Private - Generated method"
	^icons 
			at: #databaseIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self databaseIconContents readStream) ].