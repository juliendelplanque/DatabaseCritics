tests-entity-checking
testCheck
	| test functionHello functionFoo |
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
	functionHello := (model entities detect: [ :e | e isSQLFunction and: [ e name = 'hello' ] ]).
	functionFoo := (model entities detect: [ :e | e isSQLFunction and: [ e name = 'foo' ] ]).
	self assert: (test check: functionFoo).
	self deny: (test check: functionHello)