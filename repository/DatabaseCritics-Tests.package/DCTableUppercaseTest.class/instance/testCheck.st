tests-entity-checking
testCheck
	| entity |
	entity := model entities detect: [ :e | e name = 'Bar' ].
	
	self checkTest: DCTableUppercase new withViolatingEntity: entity