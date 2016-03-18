tests-entity-checking
testRunOn
	| test entity entities |
	self generateModelFrom: 'CREATE TABLE sujet (
    cle integer NOT NULL,
    titre character varying[] NOT NULL,
    resume character varying
);

CREATE FUNCTION hello(test integer) RETURNS text
    LANGUAGE plpgsql
    AS $$BEGIN
	return test;
END;$$;

CREATE FUNCTION foo() RETURNS text
    LANGUAGE plpgsql
    AS $$BEGIN
	return hello(1);
END;$$;

CREATE VIEW test_view AS SELECT hello(cle) FROM sujet;
'.
	test := DCBUnusedFunction new.
	entity := (model entities detect: [ :e | e name = 'foo' ]).
	test runOn: entity.
	self assert: (test entitiesViolatingTheRule includes: entity).
	
	entities := (model entities select: [ :e | (test acceptEntity: e) and: [ e name ~= 'foo' ] ]).
	entities do: [ :e |
		test runOn: e.
		self assert: test entitiesViolatingTheRule size equals: 1 ]