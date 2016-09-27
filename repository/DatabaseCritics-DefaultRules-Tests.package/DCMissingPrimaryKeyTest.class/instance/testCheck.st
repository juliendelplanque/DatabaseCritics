tests-entity-checking
testCheck
	| entity |
	entity := model entities detect: [ :e | e name = 'foo1' ].
	
	self checkTest: DCMissingPrimaryKey new withViolatingEntity: entity