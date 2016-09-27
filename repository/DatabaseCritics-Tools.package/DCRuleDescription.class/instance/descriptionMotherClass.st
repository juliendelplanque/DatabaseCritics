description
descriptionMotherClass
	"<magritteDescription>"
	^ MASingleOptionDescription new
			default: DCRule;
			options: DCRule withAllSubclasses \ DCRule applicableSubclasses;
			display: #name;
			reference: MAClassDescription new;
			accessor: #motherClass;
			label: 'Super class';
			priority: 30;
			beSorted;
			beRequired;
			yourself