test-comparing
testGreater
	self assert: DCError new > DCWarning new.
	self assert: DCWarning new > DCInfo new.
	self assert: DCError new > DCInfo new