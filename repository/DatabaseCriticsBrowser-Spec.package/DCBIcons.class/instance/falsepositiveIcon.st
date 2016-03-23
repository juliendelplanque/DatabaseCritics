accessing - icons
falsepositiveIcon
	"Private - Generated method"
	^icons 
			at: #falsepositiveIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self falsepositiveIconContents readStream) ].