dependencies
famixSQL: spec
	^ spec
		project: 'Famix-SQL' with: [ 
			spec
				className: 'ConfigurationOfFamixSQL';
				version: #development;
				repository: 'http://smalltalkhub.com/mc/Moose/MooseSQL/main/' ];
		yourself