tests-entity-checking
testCheck
	| test entity entities |
	self generateModelFrom: 'CREATE TABLE theme (
    cle integer NOT NULL,
    nom character varying(1024) NOT NULL,
    description character varying(8192)
);
CREATE TABLE sujet (
    cle integer NOT NULL,
    titre character varying[] NOT NULL,
    resume character varying
);
ALTER TABLE ONLY sujet
    ADD CONSTRAINT sujet_pkey PRIMARY KEY (cle)'.
	test := DCBMissingPrimaryKey new.
	entity := (model entities detect: [ :e | e name = 'theme' ]).
	self assert: (test check: entity).
	
	entities := (model entities select: [ :e | (test acceptEntity: e) and: [ e name ~= 'theme' ] ]).
	entities do: [ :key |
		self deny: (test check: key) ]