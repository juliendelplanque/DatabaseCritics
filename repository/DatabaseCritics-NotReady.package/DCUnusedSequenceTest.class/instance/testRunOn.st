tests-entity-checking
testRunOn
	| entity |
	entity := model entities detect: [ :e | e name = 'foo_unused' ].
	
	self runOnTest: DCUnusedSequence new withViolatingEntity: entity