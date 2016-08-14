tests-entity-checking
testRunOn
	| entity |
	entity := model entities detect: [ :e | e name = 'foo2' ].
	
	self runOnTest: (DCLowNumberOfColumns new threshold: 6; yourself) withViolatingEntity: entity