marking
isEntity: aFamixSQLEntity markedAsFalsePositiveFor: aRule
	"First we verify if there is already the key and its associated list in the dictionary."
	(falsePositivesDict includesKey: aRule class)
		ifFalse: [ "If not we return false."
			^ false ].
	
	"Then we create a false positive and add it to the list."
	^ (falsePositivesDict at: aRule class) includes: (DCBFalsePositive entity: aFamixSQLEntity forRule: aRule)