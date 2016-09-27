tests-entity-checking
testCheck
	| entity |
	entity := model entities detect: [ :e | e name = 'view1' ].
	
	self checkTest: DCViewUsingOnlyOneTable new withViolatingEntity: entity