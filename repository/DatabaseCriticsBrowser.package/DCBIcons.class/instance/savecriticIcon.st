accessing - icons
savecriticIcon
	"Private - Generated method"
	^icons 
			at: #savecriticIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self savecriticIconContents readStream) ].