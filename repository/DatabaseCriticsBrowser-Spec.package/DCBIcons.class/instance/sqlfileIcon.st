accessing - icons
sqlfileIcon
	"Private - Generated method"
	^icons 
			at: #sqlfileIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self sqlfileIconContents readStream) ].