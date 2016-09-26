description
descriptionSeverity
	<magritteDescription>
	^ MASingleOptionDescription new
			default: DCWarningSeverity;
			options: DCSeverity subclasses;
			display: #severityName;
			reference: MAClassDescription new;
			accessor: #severity;
			label: 'Severity';
			priority: 60;
			beRequired;
			beSorted;
			yourself