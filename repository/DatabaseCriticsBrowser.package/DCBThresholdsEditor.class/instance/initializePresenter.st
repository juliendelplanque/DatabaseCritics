initialization
initializePresenter
	super initializePresenter.
	self thresholdRulesList
		items: (DCRuleWithThreshold allSubclasses select: #isConcrete thenCollect: #new);
		displayBlock: [ :rule | rule ruleName ];
		setIndex: 1;
		autoDeselect: false;
		whenSelectedItemChanged: [ :rule | self thresholdEditor rule: rule ].
	
	self thresholdEditor rule: self thresholdRulesList selectedItem.