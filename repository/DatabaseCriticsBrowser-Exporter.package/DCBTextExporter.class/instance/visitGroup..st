visiting
visitGroup: aGroup
	self shift.
	outputStream
		<< '+ ';
		<< aGroup groupName;
		<< self lineEnding.
	shiftCount := shiftCount + 1.
	super visitGroup: aGroup.
	shiftCount := shiftCount - 1.
	outputStream << self lineEnding