test-comparing
testEquals
	self assert: DCBWarning new = DCBWarning new.
	self assert: DCBInfo new = DCBInfo new.
	self assert: DCBError new = DCBError new