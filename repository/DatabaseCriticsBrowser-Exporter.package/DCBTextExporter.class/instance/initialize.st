initialization
initialize
	super initialize.
	outputStream := WriteStream with: String new.
	shiftCount := 0.