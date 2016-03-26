accessing - icons
loadcriticIcon
	"Private - Generated method"
	^icons 
			at: #loadcriticIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self loadcriticIconContents readStream) ].