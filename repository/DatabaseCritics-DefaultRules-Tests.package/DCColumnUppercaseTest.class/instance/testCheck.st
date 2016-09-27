tests-entity-checking
testCheck
	| entity |
	entity := model entities detect: [ :e | e name = 'Bar_col' ].
	
	self checkTest: DCColumnUppercase new withViolatingEntity: entity