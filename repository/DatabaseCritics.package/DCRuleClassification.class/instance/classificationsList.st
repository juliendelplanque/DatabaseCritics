computing
classificationsList
	"Return the list of classifications class nested.
	 The first classification of the list is the less nested and the last is the more nested."
	^ { self } , (self subgroupClassification 
									ifNil: [ #() ]
									ifNotNil: [ self subgroupClassification classificationsList ])