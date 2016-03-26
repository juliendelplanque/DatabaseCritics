announcing
announceNewRulesSelected
	self initialRightItems do: #clearEntitiesViolatingTheRule.
	self
		announce: (DCBNewRulesChosen rules: self initialRightItems)