tests-entity-checking
testCheck
	| entity |
	entity := model entities detect: [ :e | e name = 'bar_using' ].
	
	self checkTest: DCViewUsingAnotherView new withViolatingEntity: entity