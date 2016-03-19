marking
mark: aFamixSQLEntity asFalsePositiveFor: aRule
	"First we verify if there is already the key and its associated list in the dictionary."
	(falsePositivesDict includesKey: aRule class)
		ifFalse: [ "If not we create an empty list at the key (class of the rule)."
			falsePositivesDict at: aRule class put: LinkedList new ].
	
	"Then we create a false positive and add it to the list."
	(falsePositivesDict at: aRule class) add: (DCBFalsePositive entity: aFamixSQLEntity forRule: aRule)