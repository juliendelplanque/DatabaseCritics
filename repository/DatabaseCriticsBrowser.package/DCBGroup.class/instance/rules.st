rules-retreiving
rules
	"Retreive the rules at the bottom of the tree formed by groups."
	| childrenAreRules |
	childrenAreRules := (self children collect: [ :child | DCBRule appliableSubclasses includes: child class ]) fold: [ :a :b | a and: b ].
	(self children isEmpty or: [ childrenAreRules ])
		ifTrue: [ ^ self children ].
	^ (self children collect: #rules) fold: [ :a :b | a , b ]