api projectSpec
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				package: 'DatabaseCriticsBrowser' with: [ 
					spec
						requires: 'PetitSQLIsland' ];
				package: 'DatabaseCriticsBrowser-Spec' with: [
					spec
						requires: 'HelpCenter';
						requires: 'SpecModelsAddOns';
						requires: 'PgDumpLoader';
						requires: 'ShortcutsCenter' ];
				package: 'DatabaseCriticsBrowser-Exporter' with: [ 
					spec
						requires: 'XMLWriter' ];
				package: 'DatabaseCriticsBrowser-Tests';
				package: 'DatabaseCriticsBrowser-SpecTests'.
			spec
				project: 'PetitSQLIsland' with: [ 
					spec
						className: 'ConfigurationOfPetitSQLIsland';
						version: #development;
						repository: 'http://smalltalkhub.com/mc/olivierauverlot/PetitSQLIsland/main' ];
				project: 'HelpCenter' with: [ 
					spec
						className: 'ConfigurationOfHelpCenter';
						version: #development;
						repository: 'http://smalltalkhub.com/mc/JulienDelplanque/HelpCenter/main' ];
				project: 'SpecModelsAddOns' with: [ 
					spec
						className: 'ConfigurationOfSpecModelsAddOns';
						version: #development;
						repository: 'http://smalltalkhub.com/mc/JulienDelplanque/SpecAddOns/main' ];
				project: 'PgDumpLoader' with: [ 
					spec
						className: 'ConfigurationOfPgDumpLoader';
						version: #development;
						repository: 'http://smalltalkhub.com/mc/AnneEtien/Myrddin/main' ];
				project: 'ShortcutsCenter' with: [ 
					spec
						className: 'ConfigurationOfShortcutsCenter';
						version: #development;
						repository: 'http://smalltalkhub.com/mc/JulienDelplanque/ShortcutsCenter/main' ];
				project: 'XMLWriter' with: [ 
					spec
						className: 'ConfigurationOfXMLWriter';
						version: #stable;
						repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main' ]
		]