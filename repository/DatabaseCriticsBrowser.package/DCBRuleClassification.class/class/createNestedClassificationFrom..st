nesting
createNestedClassificationFrom: aListOfClassificationInstances
	| classification |
	aListOfClassificationInstances
		detect: [ :any | any class = DCBNoClassification ]
		ifFound: [ :noClassification | 
			(DCBForbiddenClassification classification: noClassification) signal ].
	aListOfClassificationInstances isEmpty
		ifFalse: [ 
			"Clean subgroup classification chosen before."
			aListOfClassificationInstances do: [ :c | c subgroupClassification: nil ].
			classification := aListOfClassificationInstances last.
			aListOfClassificationInstances reversed allButFirst do: [ :class |
				classification := class subgroupClassification: classification ] ]
		ifTrue: [ classification := DCBNoClassification new ].
	^ classification