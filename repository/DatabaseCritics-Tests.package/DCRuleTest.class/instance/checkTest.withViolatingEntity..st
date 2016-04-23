tests-entity-checking
checkTest: test withViolatingEntity: entity
	"Run a test on the class 'testClass' that inherits from DCRule to determinate if #check: works.
	 To do so, you have to give an entity 'entity' as parameter that will be the only entity
	 violating the rule in the model."
	| entities |
	self assert: (test check: entity).
	entities := model entities
		select: [ :e | (test acceptEntity: e) and: [ e ~= entity ] ].
	entities do: [ :key | self deny: (test check: key) ]