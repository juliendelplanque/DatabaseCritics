false-positives
removeFalsePositiveForEntityNamed: aString
	self falsePositives 
		detect: [ :falsePositive | falsePositive entityName = aString  ]
		ifFound: [ :found | self falsePositives remove: found  ]
		ifNone: [ (DCNoFalsePositive forEntityNamed: aString) signal ]