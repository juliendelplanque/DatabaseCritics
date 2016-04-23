tests
testRunOn
	| entity |
	entity := model entities detect: [ :e | e name = 'stub' ].
	
	self runOnTest: DCMissingPrimaryKey new withViolatingEntity: entity