initialization
initializePresenter
	super initializePresenter.
	self listsChooser
		displayBlock: [ :rule | rule ruleName ];
		sortingBlock: [ :ruleA :ruleB | ruleA ruleName < ruleB ruleName ]