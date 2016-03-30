classifier-building
buildClassifier
	"Builds a classifier according to user choices and returns it."
	| classification |
	self rightItems isEmpty
		ifFalse: [ 
			self rightItems do: [ :c | c subgroupClassification: nil ]. "Clean subgroup classification chosen before."
			classification := self rightItems last.
			self rightItems reversed allButFirst do: [ :class |
				classification := class subgroupClassification: classification ] ]
		ifTrue: [ classification := DCBNoClassification new ].
	^ classification