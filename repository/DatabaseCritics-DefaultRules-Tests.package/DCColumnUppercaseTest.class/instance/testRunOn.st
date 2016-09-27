tests-entity-checking
testRunOn
	| entity |
	entity := model entities detect: [ :e | e name = 'Bar_col' ].
	
	self runOnTest: DCColumnUppercase new withViolatingEntity: entity