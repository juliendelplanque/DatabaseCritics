tests-accessing
testLeftListInitialItems
	self assert: (rulesChooser leftListInitialItems collect: #class) equals: DCBRule applicableSubclasses.
	rulesChooser leftListInitialItems do: [ :rule | self deny: rule isClass ]