tests-entity-checking
testRunOn
	| entity |
	entity := model entities detect: [ :e | e name = 'Bar' ].
	
	self runOnTest: DCTableUppercase new withViolatingEntity: entity