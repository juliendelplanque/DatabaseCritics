actions
updateThreshold
	self undefinedCheck state
		ifTrue: [ self rule resetThreshold  ]
		ifFalse: [ 
			[ self rule
				threshold: (self rule thresholdClass readFrom: self inputField text) ]
				on: Error
				do: [ :error | 
					self announce: (DCBCouldNotChangeThreshold
											rule: self rule
											inputText: (self inputField text)
											initialError: error).
					^ self ] ].
	
	self announce: (DCBThresholdChanged rule: self rule newThreshold: self rule threshold)