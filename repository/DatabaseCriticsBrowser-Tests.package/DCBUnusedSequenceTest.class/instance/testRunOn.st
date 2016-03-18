tests-entity-checking
testRunOn
	| test entity entities |
	self generateModelFrom: 'CREATE SEQUENCE unused
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
CREATE SEQUENCE used
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
CREATE TABLE test_table (
    cle integer DEFAULT nextval(''used''::regclass) NOT NULL
);'.
	test := DCBUnusedSequence new.
	entity := (model entities detect: [ :e | e name = 'unused' ]).
	test runOn: entity.
	self assert: (test entitiesViolatingTheRule includes: entity).
	
	entities := (model entities select: [ :e | (test acceptEntity: e) and: [ e name ~= 'foo' ] ]).
	entities do: [ :e |
		test runOn: e.
		self assert: test entitiesViolatingTheRule size equals: 1 ]