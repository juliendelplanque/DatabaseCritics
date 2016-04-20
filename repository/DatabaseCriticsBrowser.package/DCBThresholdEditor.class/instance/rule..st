accessing
rule: aRule
	rule := aRule.
	rule threshold isNil
		ifFalse: [
			self undefinedCheck state: false.
			self inputField
				text: rule threshold asString ]
		ifTrue: [ 
			self undefinedCheck state: true.
			self undefinedThreshold ]