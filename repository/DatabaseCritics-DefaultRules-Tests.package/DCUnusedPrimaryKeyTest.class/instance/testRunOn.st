tests-entity-checking
testRunOn
	| entity |
	entity := model entities detect: [ :e | e name = 'foo1' ].
	
	self runOnTest: DCUnusedPrimaryKey new withViolatingEntity: entity