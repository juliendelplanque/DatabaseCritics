tests-entity-checking
testCheck
	| entity |
	entity := model entities detect: [ :e | e name = 'foo2' ].
	
	self checkTest: (DCLowNumberOfColumns new threshold: 6; yourself) withViolatingEntity: entity