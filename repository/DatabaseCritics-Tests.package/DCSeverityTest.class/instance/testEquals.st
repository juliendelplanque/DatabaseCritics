test-comparing
testEquals
	self assert: DCWarningSeverity new = DCWarningSeverity new.
	self assert: DCInfoSeverity new = DCInfoSeverity new.
	self assert: DCErrorSeverity new = DCErrorSeverity new