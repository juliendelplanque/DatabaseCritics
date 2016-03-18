tests-entity-checking
testRunOn
	| test entity entities |
	self generateModelFrom: 'CREATE TABLE Theme (
    cle integer NOT NULL,
    nom character varying(1024) NOT NULL,
    description character varying(8192)
);
CREATE TABLE sujet (
    cle integer NOT NULL,
    titre character varying[] NOT NULL,
    resume character varying
)'.
	test := DCBTableUppercase new.
	entity := (model entities detect: [ :e | e name = 'Theme' ]).
	test runOn: entity.
	self assert: (test entitiesViolatingTheRule includes: entity).
	
	entities := (model entities select: [ :e | (test acceptEntity: e) and: [ e name ~= 'Theme' ] ]).
	entities do: [ :table |
		test runOn: table.
		self assert: test entitiesViolatingTheRule size equals: 1 ]