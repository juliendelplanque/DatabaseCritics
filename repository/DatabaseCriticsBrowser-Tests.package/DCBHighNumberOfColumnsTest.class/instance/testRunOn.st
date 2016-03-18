tests-entity-checking
testRunOn
	| test entity entities originalThreshold |
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
	test runOn: entity.
	self assert: (test entitiesViolatingTheRule includes: entity).
	
	entities := (model entities select: [ :e | (test acceptEntity: e) and: [ e name ~= 'sujet' ] ]).
	entities do: [ :key |
		test runOn: key.
		self assert: test entitiesViolatingTheRule size equals: 1 ].

	"Set the original threshold back."
	originalThreshold
		ifNil: [ DCBHighNumberOfColumns resetThreshold ]
		ifNotNil: [ DCBHighNumberOfColumns threshold: originalThreshold ]