description
descriptionRuleClassName
	<magritteDescription>
	^ MASymbolDescription new
		addCondition: [ :symbol |
			symbol matchesRegex: '[A-Z][a-zA-Z]*' ] labelled: 'Good class name';
		accessor: #ruleClassName;
		label: 'Class name';
		priority: 20;
		beRequired;
		yourself