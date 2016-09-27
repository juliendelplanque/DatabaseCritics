tests-entity-checking
testRunOn
	| entity |
	entity := model entities detect: [ :e | e name = 'bar' ].
	
	self runOnTest: DCForeignKeyReferencingNonPrimaryColumn new withViolatingEntity: entity