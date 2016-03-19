grouping
groups
	"Creates nested DCBGroup/DCBRule to represent the classification
	 as a tree (of course, DCBRules are the leafs of this tree) and returns it."
	^ (self groupedRules keys sorted: self sortBlock) collect: [ :key |
		| ruleList |
		ruleList := self groupedRules at: key.
		DCBGroup
			named: key asString
			children: (self subgroupClassification rules: ruleList; yourself) groups ].