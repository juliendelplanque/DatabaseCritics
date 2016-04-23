tests-entity-checking
runOnTest: test withViolatingEntity: entity
	"Run a test on the class 'testClass' that inherits from DCRule to determinate if #runOn: works.
	 To do so, you have to give an entity 'entity' as parameter that will be the only entity
	 violating the rule in the model."
	| entities |
	test runOn: entity.
	self assert: (test entitiesViolatingTheRule includes: entity).
	self assert: test entitiesViolatingTheRule size equals: 1.
	entities := model entities select: [ :e | (test acceptEntity: e) and: [ e ~= entity ] ].
	entities do: [ :key | 
		test runOn: key.
		self assert: test entitiesViolatingTheRule size equals: 1 ]