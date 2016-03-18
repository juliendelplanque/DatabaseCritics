accessing - icons
keyboardIcon
	"Private - Generated method"
	^icons 
			at: #keyboardIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self keyboardIconContents readStream) ].