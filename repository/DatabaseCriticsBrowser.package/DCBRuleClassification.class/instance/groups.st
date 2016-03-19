grouping
groups
	"Creates nested DCBGroup/DCBRule to represent the classification
	 as a tree (of course, DCBRules are the leafs of this tree) and returns it."
	| groups |
	groups := OrderedCollection new.
	self groupedRules keysAndValuesDo: [ :key :ruleList |
		groups add: (DCBGroup
							named: key asString
							children: (self subgroupClassification rules: ruleList; yourself) groups) ].
	^ groups