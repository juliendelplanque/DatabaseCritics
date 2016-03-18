instance creation
newClassification: aClassfication
	^ self new
		newClassification: aClassfication;
		yourself