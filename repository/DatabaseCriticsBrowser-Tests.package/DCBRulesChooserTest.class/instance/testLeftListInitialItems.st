tests-accessing
testLeftListInitialItems
	self assert: (rulesChooser leftListInitialItems collect: #class) equals: (DCRule applicableSubclasses reject: [ :class | class isKindOf: DCRuleWithThreshold class ]).
	rulesChooser leftListInitialItems do: [ :rule | self deny: rule isClass ]