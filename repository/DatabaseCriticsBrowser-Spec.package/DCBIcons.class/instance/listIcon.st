accessing - icons
listIcon
	"Private - Generated method"
	^icons 
			at: #listIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self listIconContents readStream) ].