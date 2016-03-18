test-comparing
testLesserOrEquals
	self assert: DCBWarning new <= DCBError new.
	self assert: DCBInfo new <= DCBWarning new.
	self assert: DCBInfo new <= DCBError new.
	self assert: DCBWarning new <= DCBWarning new.
	self assert: DCBInfo new <= DCBInfo new.
	self assert: DCBError new <= DCBError new.