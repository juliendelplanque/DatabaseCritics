instance creation
buildClassifierFrom: classifierClasses
	"Build a classifier with its subclassifiers using the classifier list.
	The less nested classifier is the classifier at the beginning of the list.
	The more nested classifier is the classifier at the end of the list.
	If the list given as parameter, an instance of DCBNoClassification is returned."
	| classification |
	classifierClasses isEmpty
		ifFalse: [ 
			classification := classifierClasses last new.
			classifierClasses reversed allButFirst do: [ :class |
				classification := class new subgroupClassification: classification ] ]
		ifTrue: [ classification := DCBNoClassification new ].
	^ classification