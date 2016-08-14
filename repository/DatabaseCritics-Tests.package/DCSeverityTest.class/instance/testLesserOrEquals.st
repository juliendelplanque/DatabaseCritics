test-comparing
testLesserOrEquals
	self assert: DCWarningSeverity new <= DCErrorSeverity new.
	self assert: DCInfoSeverity new <= DCWarningSeverity new.
	self assert: DCInfoSeverity new <= DCErrorSeverity new.
	self assert: DCWarningSeverity new <= DCWarningSeverity new.
	self assert: DCInfoSeverity new <= DCInfoSeverity new.
	self assert: DCErrorSeverity new <= DCErrorSeverity new.