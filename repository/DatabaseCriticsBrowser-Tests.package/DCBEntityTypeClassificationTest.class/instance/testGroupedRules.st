tests-grouping
testGroupedRules
	| classification |
	classification := DCBEntityTypeClassification rules: rules.
	classification groupedRules keysAndValuesDo: [ :class :group |
		group do: [:rule |
			self assert: rule acceptedClass equals: class ] ]