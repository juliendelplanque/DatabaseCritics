tests-grouping
testGroupedRules
	| classification |
	classification := DCPackageClassification rules: rules.
	classification groupedRules keysAndValuesDo: [ :packageName :group |
		group do: [:rule |
			self assert: rule class package name equals: packageName ] ]