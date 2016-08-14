initialization
initializeLists
	rulesList 
		items: (self rules select: #hasFalsePositive);
		displayBlock: [ :item | item ruleName ];
		whenSelectedItemChanged: [ :item | 
			item
				ifNotNil: [ self updateFalsePositivesList ]
				ifNil: [ falsePositivesList items: #() ] ].
	falsePositivesList
		displayBlock: [ :item | item label ].