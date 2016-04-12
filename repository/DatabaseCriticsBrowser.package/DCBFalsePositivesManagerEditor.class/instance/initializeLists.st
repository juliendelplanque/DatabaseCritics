initialization
initializeLists
	rulesList 
		items: (DCRule falsePositivesManager rulesConcerned
						select: [ :ruleClass | DCRule falsePositivesManager isThereFalsePositiveFor: ruleClass ]);
		displayBlock: [ :item | item new ruleName ];
		whenSelectedItemChanged: [ :item | 
			item
				ifNotNil: [ self updateFalsePositivesList ]
				ifNil: [ falsePositivesList items: #() ] ].
	falsePositivesList
		displayBlock: [ :item | item label ].