running
setUp
	model := MooseModel new.
	self class ~= DCRuleTest "We want to build the model for any test class except the mother."
		ifTrue: [ self buildModelWith: model ]