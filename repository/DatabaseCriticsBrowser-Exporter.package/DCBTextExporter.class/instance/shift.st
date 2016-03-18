shifting
shift
	| i | 
	i := 0.
	[ i < shiftCount ]
		whileTrue: [
			outputStream << Character tab.
			i := i + 1 ].