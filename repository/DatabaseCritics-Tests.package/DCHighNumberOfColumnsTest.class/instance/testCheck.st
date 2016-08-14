tests-entity-checking
testCheck
	| entity |
	entity := model entities detect: [ :e | e name = 'foo1' ].
	
	self checkTest: (DCHighNumberOfColumns new threshold: 10; yourself) withViolatingEntity: entity