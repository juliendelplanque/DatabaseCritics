tests-entity-checking
testCheck
	| test originalThreshold entity entities |
	self generateModelFrom: 'CREATE TABLE theme (
    cle integer NOT NULL,
    nom character varying(1024) NOT NULL
);
CREATE TABLE sujet (
    cle integer NOT NULL,
    titre character varying[] NOT NULL,
    resume character varying
)'.
	test := DCBHighNumberOfColumns new.
	"Backup current threshold."
	originalThreshold := DCBHighNumberOfColumns threshold.
	"Set test threshold."
	DCBHighNumberOfColumns threshold: 2.
	"Test"
	entity := (model entities detect: [ :e | e name = 'sujet' ]).
	self assert: (test check: entity).
	
	entities := (model entities select: [ :e | (test acceptEntity: e) and: [ e name ~= 'sujet' ] ]).
	entities do: [ :key |
		self deny: (test check: key) ].
	
	"Set the original threshold back."
	originalThreshold
		ifNil: [ DCBHighNumberOfColumns resetThreshold ]
		ifNotNil: [ DCBHighNumberOfColumns threshold: originalThreshold ]