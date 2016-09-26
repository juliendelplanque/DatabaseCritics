description
descriptionPackage
	<magritteDescription>
	^ MASingleOptionDescription new
			options: (RPackageOrganizer default packages collect: #name);
			reference: MAStringDescription new;
			accessor: #package;
			label: 'Package';
			priority: 10;
			beSorted;
			beRequired;
			yourself