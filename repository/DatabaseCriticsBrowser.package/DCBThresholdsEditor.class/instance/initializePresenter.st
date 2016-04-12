initialization
initializePresenter
	super initializePresenter.
	self thresholdRulesList
		items: (DCRuleWithThreshold allSubclasses select: [ :class | class isConcrete ]);
		displayBlock: [ :ruleClass | ruleClass new ruleName ];
		setIndex: 1;
		autoDeselect: false;
		whenSelectedItemChanged: [ :ruleClass | self thresholdEditor ruleClass: ruleClass ].
	
	self thresholdEditor ruleClass: self thresholdRulesList selectedItem.