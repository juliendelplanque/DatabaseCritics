buttons-action
markSelectedEntityAsFalsePositive
	| entity ruleOrGroup rule |
	treeListButton listHasSelectedItem ifFalse: [ ^ self ].
	
	entity := treeListButton listSelectedItem.
	ruleOrGroup := treeListButton treeSelectedItem.
	self assert: (ruleOrGroup isGroup or: [ ruleOrGroup isRule ]).
	(ruleOrGroup isKindOf: DCBRule)
		ifTrue: [ 
			rule := ruleOrGroup ]
		ifFalse: [ 
			| rulesPossible |
			rulesPossible := ruleOrGroup rules select: [ :r | r entitiesViolatingTheRuleWithoutFalsePositives includes: entity ].
			rulesPossible size > 1
				ifFalse: [ rule := rulesPossible first ]
				ifTrue: [ 
					rule := UIManager default 
									chooseFrom: (rulesPossible collect: #ruleName)
									values: rulesPossible
									title: 'Choose the rule of the entity.' ].
			rule ifNil: [ ^ self ]. "If the rule is nil, it means user cancel the choice." 
			].
		DCBRule falsePositivesManager mark: entity asFalsePositiveFor: rule.
		treeListButton updateTree