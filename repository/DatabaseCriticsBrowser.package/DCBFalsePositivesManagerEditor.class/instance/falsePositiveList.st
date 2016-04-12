helpers
falsePositiveList
	^ (DCRule falsePositivesManager 
			falsePositiveFor: rulesList selectedItem) \ falsePositiveToUnmark