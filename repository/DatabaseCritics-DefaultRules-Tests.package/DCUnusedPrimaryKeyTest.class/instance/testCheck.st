tests-entity-checking
testCheck
	| entity |
	entity := model entities detect: [ :e | e name = 'foo1' ].
	
	self checkTest: DCUnusedPrimaryKey new withViolatingEntity: entity