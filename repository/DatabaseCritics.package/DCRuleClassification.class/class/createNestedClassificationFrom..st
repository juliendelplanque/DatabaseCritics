nesting
createNestedClassificationFrom: aListOfClassificationInstances
	| classification |
	aListOfClassificationInstances
		detect: [ :any | any class = DCNoClassification ]
		ifFound: [ :noClassification | 
			(DCForbiddenClassification classification: noClassification) signal ].
	aListOfClassificationInstances isEmpty
		ifFalse: [ 
			"Clean subgroup classification chosen before."
			aListOfClassificationInstances do: [ :c | c subgroupClassification: nil ].
			classification := aListOfClassificationInstances last.
			aListOfClassificationInstances reversed allButFirst do: [ :class |
				classification := class subgroupClassification: classification ] ]
		ifTrue: [ classification := DCNoClassification new ].
	^ classification