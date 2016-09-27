menu building
ruleBuilderMenuOn: aBuilder 
	<worldMenu>
	(aBuilder item: #'Rule with threshold builder')
		action: [ self new maDCRuleEdit ];
		order: 1.1;
		parent: #Tools;
		help: 'Build a rule with threshold for the database critics'.
	aBuilder withSeparatorAfter.	