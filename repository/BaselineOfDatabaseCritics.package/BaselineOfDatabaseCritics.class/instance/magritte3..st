dependencies
magritte3: spec
	^ spec
		project: 'Magritte' with: [ 
			spec
				className: 'ConfigurationOfMagritte3';
				version: #stable;
				repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main' ];
		yourself