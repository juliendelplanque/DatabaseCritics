tests-grouping
testGroupedRules
	| classification |
	classification := DCSeverityClassification rules: rules.
	classification groupedRules keysAndValuesDo: [ :severity :group |
		group do: [:rule |
			self assert: rule severity equals: severity ] ]