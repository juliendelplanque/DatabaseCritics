test-comparing
testHash
	{ DCWarning new . DCInfo new . DCError new } do: [ :severity |
		self
			assert: (severity severityName hash bitXor: severity level hash)
			equals: severity hash ]