test-comparing
testGreater
	self assert: DCBError new > DCBWarning new.
	self assert: DCBWarning new > DCBInfo new.
	self assert: DCBError new > DCBInfo new