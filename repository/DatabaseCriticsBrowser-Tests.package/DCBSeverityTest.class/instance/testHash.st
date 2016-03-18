test-comparing
testHash
	{ DCBWarning new . DCBInfo new . DCBError new } do: [ :severity |
		self
			assert: (severity severityName hash bitXor: severity level hash)
			equals: severity hash ]