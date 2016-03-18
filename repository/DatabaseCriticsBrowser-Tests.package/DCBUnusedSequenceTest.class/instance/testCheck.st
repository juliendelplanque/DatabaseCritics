tests-entity-checking
testCheck
	| test usedSequence unusedSequence |
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
	usedSequence := (model entities detect: [ :e | e isSequence and: [ e name = 'used' ] ]).
	unusedSequence := (model entities detect: [ :e | e isSequence and: [ e name = 'unused' ] ]).
	self assert: (test check: unusedSequence).
	self deny: (test check: usedSequence)