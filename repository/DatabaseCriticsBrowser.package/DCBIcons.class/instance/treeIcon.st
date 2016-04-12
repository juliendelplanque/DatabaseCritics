accessing - icons
treeIcon
	"Private - Generated method"
	^icons 
			at: #treeIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self treeIconContents readStream) ].