dependencies
pgDumpLoader: spec
	^ spec
		project: 'PgDumpLoader' with: [ 
			spec
				className: 'ConfigurationOfPgDumpLoader';
				version: #development;
				repository: 'http://smalltalkhub.com/mc/AnneEtien/Myrddin/main' ];
		yourself