test-comparing
testGreaterOrEquals
	self assert: DCBError new >= DCBWarning new.
	self assert: DCBWarning new >= DCBInfo new.
	self assert: DCBError new >= DCBInfo new.
	self assert: DCBWarning new >= DCBWarning new.
	self assert: DCBInfo new >= DCBInfo new.
	self assert: DCBError new >= DCBError new.