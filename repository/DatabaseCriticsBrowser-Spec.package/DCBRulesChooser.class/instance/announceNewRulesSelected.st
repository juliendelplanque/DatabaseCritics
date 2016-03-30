announcing
announceNewRulesSelected
	self rightItems do: #clearEntitiesViolatingTheRule.
	self
		announce: (DCBNewRulesChosen rules: self rightItems)