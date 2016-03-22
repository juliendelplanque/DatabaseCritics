initialization
initializeLists
	rulesList 
		items: (DCBRule falsePositivesManager rulesConcerned
						select: [ :ruleClass | DCBRule falsePositivesManager isThereFalsePositiveFor: ruleClass ]);
		displayBlock: [ :item | item new ruleName ];
		whenSelectedItemChanged: [ :item | 
			item
				ifNotNil: [ self updateFalsePositivesList ]
				ifNil: [ falsePositivesList items: #() ] ].
	falsePositivesList
		displayBlock: [ :item | item label ].