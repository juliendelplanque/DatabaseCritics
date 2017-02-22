analysis
computeViolationsDiffBetween: lastRules and: currentRules in: results for: checker
	| rulesRemoved |
	currentRules do: [ :currentRule |
			|lastRule|
			lastRule := lastRules detect: [ :r | r class = currentRule class ].
			self computeRuleDiffBetween: lastRule and: currentRule in: results for: checker ].
	
	rulesRemoved := lastRules reject: [ :r | currentRules anySatisfy: [ :any | any class =  r class ] ].
	rulesRemoved do: [ :ruleRemoved |
		|currentRule|
		currentRule := currentRules detect: [ :r | r class = ruleRemoved class ].
		self computeRuleDiffBetween: ruleRemoved and: currentRule in: results for: checker ]