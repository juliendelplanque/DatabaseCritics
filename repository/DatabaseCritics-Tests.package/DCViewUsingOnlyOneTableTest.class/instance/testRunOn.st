tests-entity-checking
testRunOn
	| entity |
	entity := model entities detect: [ :e | e name = 'view1' ].
	
	self runOnTest: DCViewUsingOnlyOneTable new withViolatingEntity: entity