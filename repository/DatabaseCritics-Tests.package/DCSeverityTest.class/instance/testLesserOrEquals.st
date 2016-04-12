test-comparing
testLesserOrEquals
	self assert: DCWarning new <= DCError new.
	self assert: DCInfo new <= DCWarning new.
	self assert: DCInfo new <= DCError new.
	self assert: DCWarning new <= DCWarning new.
	self assert: DCInfo new <= DCInfo new.
	self assert: DCError new <= DCError new.