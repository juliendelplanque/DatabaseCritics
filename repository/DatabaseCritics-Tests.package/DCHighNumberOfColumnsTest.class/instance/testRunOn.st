tests-entity-checking
testRunOn
	| entity |
	entity := model entities detect: [ :e | e name = 'foo1' ].
	
	self runOnTest: (DCHighNumberOfColumns new threshold: 10; yourself) withViolatingEntity: entity