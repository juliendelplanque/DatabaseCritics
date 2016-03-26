classifier-building
buildClassifier
	"Builds a classifier according to user choices and returns it."
	| classification |
	self initialRightItems isEmpty
		ifFalse: [ 
			classification := self listsChooser rightListItems last new.
			self listsChooser rightListItems reversed allButFirst do: [ :class |
				classification := class new subgroupClassification: classification ] ]
		ifTrue: [ classification := DCBNoClassification new ].
	^ classification