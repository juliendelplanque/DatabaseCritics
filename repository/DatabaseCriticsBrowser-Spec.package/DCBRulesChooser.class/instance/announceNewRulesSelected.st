announcing
announceNewRulesSelected
	self listsChooser rightListItems do: #clearEntitiesViolatingTheRule.
	self
		announce: (DCBNewRulesChosen rules: self listsChooser rightListItems)