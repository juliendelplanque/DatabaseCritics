dependencies
xmlWriter: spec
	^ spec
		project: 'XMLWriter' with: [ 
			spec
				className: 'ConfigurationOfXMLWriter';
				version: #stable;
				repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main' ];
		yourself