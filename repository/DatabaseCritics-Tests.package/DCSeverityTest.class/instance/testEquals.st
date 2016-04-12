test-comparing
testEquals
	self assert: DCWarning new = DCWarning new.
	self assert: DCInfo new = DCInfo new.
	self assert: DCError new = DCError new