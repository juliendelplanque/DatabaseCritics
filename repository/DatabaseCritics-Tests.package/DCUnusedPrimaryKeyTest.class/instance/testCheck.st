tests-entity-checking
testCheck
	| test entity entities |
	self generateModelFrom: self mseString.
	test := DCUnusedPrimaryKey new.
	entity := (model entities detect: [ :e | e name = 'action' ]).
	self assert: (test check: entity).
	
	entities := (model entities select: [ :e | (test acceptEntity: e) and: [ e name ~= 'action' ] ]).
	entities do: [ :key |
		self deny: (test check: key) ]