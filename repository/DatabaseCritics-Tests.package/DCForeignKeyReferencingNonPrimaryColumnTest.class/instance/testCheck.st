tests-entity-checking
testCheck
	| entity |
	entity := model entities detect: [ :e | e name = 'bar' ].
	
	self checkTest: DCForeignKeyReferencingNonPrimaryColumn new withViolatingEntity: entity