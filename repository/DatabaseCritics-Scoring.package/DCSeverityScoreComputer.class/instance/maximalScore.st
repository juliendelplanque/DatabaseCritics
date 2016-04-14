score-computation
maximalScore
	"The maximal score is computed as the sum of the number of entities in the model
	 a rule can accept * the level of the rule."
	^ (self rules collect: [ :rule |
			(self model entities select: [ :entity | rule acceptEntity: entity ]) size * rule severity level ]) sum