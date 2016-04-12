tests-grouping
testGroupedRules
	| classification |
	classification := DCEntityTypeClassification rules: rules.
	classification groupedRules keysAndValuesDo: [ :class :group |
		group do: [:rule |
			self assert: (rule acceptEntityClass: class) ] ]