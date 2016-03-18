baselines
baseline02: spec
	<version: '0.2-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/JulienDelplanque/DatabaseCriticsBrowser/main'.
		spec project: 'DatabaseCriticsBrowser' with: [
				spec
					className: #ConfigurationOfDatabaseCriticsBrowser;
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/JulienDelplanque/DatabaseCriticsBrowser/main/';
					postLoadDoIt: #setDCBStandalone ].
		spec package: #'DatabaseCriticsBrowser-Standalone'. ].
