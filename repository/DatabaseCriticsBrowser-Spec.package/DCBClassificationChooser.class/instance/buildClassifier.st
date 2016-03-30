classifier-building
buildClassifier
	"Builds a classifier according to user choices and returns it."
	| classification |
	self rightItems isEmpty
		ifFalse: [ 
			classification := self listsChooser rightListItems last.
			self listsChooser rightListItems reversed allButFirst do: [ :class |
				classification := class subgroupClassification: classification ] ]
		ifTrue: [ classification := DCBNoClassification new ].
	^ classification