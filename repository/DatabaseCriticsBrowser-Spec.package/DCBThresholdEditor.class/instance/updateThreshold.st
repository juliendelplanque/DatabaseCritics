actions
updateThreshold
	self undefinedCheck state
		ifTrue: [ self ruleClass resetThreshold  ]
		ifFalse: [ 
			[ self ruleClass
				threshold: (self ruleClass thresholdClass readFrom: self inputField text) ]
				on: Error
				do: [ :error | 
					self announce: (DCBCouldNotChangeThreshold
											ruleClass: self ruleClass
											inputText: (self inputField text)
											initialError: error).
					^ self ] ].
	
	self announce: (DCBThresholdChanged ruleClass: self ruleClass newThreshold: self ruleClass threshold)