tests-grouping
testGroups
	| classification |
	classification := DCBSeverityClassification rules: rules.
	classification groups with: classification groupedRules keys do: [ :group :key |
		self assert: group class equals: DCBGroup.
		self assert: group groupName equals: key asString ]