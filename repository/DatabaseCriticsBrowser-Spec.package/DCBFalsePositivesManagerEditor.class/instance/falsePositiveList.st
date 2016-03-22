helpers
falsePositiveList
	^ (DCBRule falsePositivesManager 
			falsePositiveFor: rulesList selectedItem) \ falsePositiveToUnmark