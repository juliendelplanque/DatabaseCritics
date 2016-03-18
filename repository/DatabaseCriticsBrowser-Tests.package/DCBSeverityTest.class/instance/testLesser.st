test-comparing
testLesser
	self assert: DCBWarning new < DCBError new.
	self assert: DCBInfo new < DCBWarning new.
	self assert: DCBInfo new < DCBError new