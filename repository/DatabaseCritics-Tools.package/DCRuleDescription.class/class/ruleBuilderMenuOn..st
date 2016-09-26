menu building
ruleBuilderMenuOn: aBuilder 
	<worldMenu>
	(aBuilder item: #'Rule builder')
		action: [ self new maDCRuleEdit ];
		order: 1;
		parent: #Tools;
		help: 'Build a rule for the database critics'.