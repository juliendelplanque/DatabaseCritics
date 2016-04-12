test-comparing
testGreaterOrEquals
	self assert: DCError new >= DCWarning new.
	self assert: DCWarning new >= DCInfo new.
	self assert: DCError new >= DCInfo new.
	self assert: DCWarning new >= DCWarning new.
	self assert: DCInfo new >= DCInfo new.
	self assert: DCError new >= DCError new.