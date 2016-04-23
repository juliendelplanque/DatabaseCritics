tests-entity-checking
testCheck
	| entity |
	entity := model entities detect: [ :e | e name = 'foo_unused' ].
	
	self checkTest: DCUnusedSequence new withViolatingEntity: entity