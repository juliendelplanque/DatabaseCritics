accessing
ruleClass: anObject
	ruleClass := anObject.
	ruleClass threshold isNil
		ifFalse: [
			self undefinedCheck state: false.
			self inputField
				text: ruleClass threshold asString ]
		ifTrue: [ 
			self undefinedCheck state: true.
			self undefinedThreshold ]