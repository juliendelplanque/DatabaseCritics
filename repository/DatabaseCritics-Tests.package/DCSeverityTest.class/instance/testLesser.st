test-comparing
testLesser
	self assert: DCWarningSeverity new < DCErrorSeverity new.
	self assert: DCInfoSeverity new < DCWarningSeverity new.
	self assert: DCInfoSeverity new < DCErrorSeverity new