accessing - icons
thresholdIcon
	"Private - Generated method"
	^icons 
			at: #thresholdIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self thresholdIconContents readStream) ].