description
descriptionAcceptedClasses
	<magritteDescription>
	^ MAMultipleOptionDescription new
			options: ((RPackageOrganizer default packages detect: [ :p | p name = 'Famix-SQL' ]) classes select: #isClass);
			reference: MAClassDescription new;
			accessor: #acceptedClasses;
			default: Set new;
			label: 'Accepted entities';
			priority: 70;
			beSorted;
			beRequired;
			yourself