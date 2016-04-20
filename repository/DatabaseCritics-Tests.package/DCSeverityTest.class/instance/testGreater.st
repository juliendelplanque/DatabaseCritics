test-comparing
testGreater
	self assert: DCErrorSeverity new > DCWarningSeverity new.
	self assert: DCWarningSeverity new > DCInfoSeverity new.
	self assert: DCErrorSeverity new > DCInfoSeverity new