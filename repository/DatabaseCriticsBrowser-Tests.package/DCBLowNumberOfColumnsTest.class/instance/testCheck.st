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
	test := DCBLowNumberOfColumns new.
	"Backup current threshold."
	originalThreshold := DCBLowNumberOfColumns threshold.
	"Set test threshold."
	DCBLowNumberOfColumns threshold: 3.
	"Test"
	entity := (model entities detect: [ :e | e name = 'theme' ]).
	self assert: (test check: entity).
	
	entities := (model entities select: [ :e | (test acceptEntity: e) and: [ e name ~= 'theme' ] ]).
	entities do: [ :key |
		self deny: (test check: key) ].
	
	"Set the original threshold back."
	originalThreshold
		ifNil: [ DCBLowNumberOfColumns resetThreshold ]
		ifNotNil: [ DCBLowNumberOfColumns threshold: originalThreshold ]