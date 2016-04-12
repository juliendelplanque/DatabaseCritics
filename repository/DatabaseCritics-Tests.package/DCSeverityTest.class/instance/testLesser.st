test-comparing
testLesser
	self assert: DCWarning new < DCError new.
	self assert: DCInfo new < DCWarning new.
	self assert: DCInfo new < DCError new