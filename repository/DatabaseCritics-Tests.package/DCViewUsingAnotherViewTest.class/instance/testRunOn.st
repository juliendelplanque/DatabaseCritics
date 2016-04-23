tests-entity-checking
testRunOn
	| entity |
	entity := model entities detect: [ :e | e name = 'bar_using' ].
	
	self runOnTest: DCViewUsingAnotherView new withViolatingEntity: entity