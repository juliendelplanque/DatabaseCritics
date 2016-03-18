baselines
baseline03: spec
	<version: '0.3-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/JulienDelplanque/DatabaseCriticsBrowser/main/'.
		spec 
			project: 'PetitSQLIsland' with: [
				spec
					className: #ConfigurationOfPetitSQLIsland;
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/olivierauverlot/PetitSQLIsland/main/' ];
			project: 'HelpCenter' with: [
				spec
					className: #ConfigurationOfHelpCenter;
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/JulienDelplanque/HelpCenter/main/' ];
			project: 'XMLWriter' with: [
				spec
					className: #ConfigurationOfXMLWriter;
					versionString: '2.6.5';
					repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main/' ];
			project: 'SpecModelsAddOns' with: [
				spec
					className: #ConfigurationOfSpecModelsAddOns;
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/JulienDelplanque/SpecAddOns/main/' ];
			project: 'PgDumpLoader' with: [
				spec
					className: #ConfigurationOfPgDumpLoader;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/AnneEtien/Myrddin/main/' ];
			project: 'ShortcutsCenter' with: [
				spec
					className: #ConfigurationOfShortcutsCenter;
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/JulienDelplanque/ShortcutsCenter/main/' ].
		spec 
			package: #DatabaseCriticsBrowser;
			package: #'DatabaseCriticsBrowser-Spec';
			package: #'DatabaseCriticsBrowser-Tests';
			package: #'DatabaseCriticsBrowser-Exporter';
			package: #'DatabaseCriticsBrowser-SpecTests'. ].
