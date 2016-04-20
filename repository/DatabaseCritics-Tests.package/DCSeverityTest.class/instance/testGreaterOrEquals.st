test-comparing
testGreaterOrEquals
	self assert: DCErrorSeverity new >= DCWarningSeverity new.
	self assert: DCWarningSeverity new >= DCInfoSeverity new.
	self assert: DCErrorSeverity new >= DCInfoSeverity new.
	self assert: DCWarningSeverity new >= DCWarningSeverity new.
	self assert: DCInfoSeverity new >= DCInfoSeverity new.
	self assert: DCErrorSeverity new >= DCErrorSeverity new.