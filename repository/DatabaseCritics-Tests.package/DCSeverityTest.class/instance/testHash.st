test-comparing
testHash
	{ DCWarningSeverity new . DCInfoSeverity new . DCErrorSeverity new } do: [ :severity |
		self
			assert: (severity severityName hash bitXor: severity level hash)
			equals: severity hash ]