tests
testCheck
	| entity |
	entity := model entities detect: [ :e | e name = 'stub' ].
	
	self checkTest: DCStubEntity new withViolatingEntity: entity