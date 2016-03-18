baselines
baseline01: spec
	<version: '0.1-baseline'>

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
					versionString: '0.2';
					repository: 'http://smalltalkhub.com/mc/JulienDelplanque/HelpCenter/main/' ];
			project: 'XMLWriter' with: [
				spec
					className: #ConfigurationOfXMLWriter;
					versionString: '2.6.5';
					repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main/' ].
		spec 
			package: #DatabaseCriticsBrowser;
			package: #'DatabaseCriticsBrowser-Spec';
			package: #'DatabaseCriticsBrowser-Tests';
			package: #'DatabaseCriticsBrowser-Exporter'. ].
