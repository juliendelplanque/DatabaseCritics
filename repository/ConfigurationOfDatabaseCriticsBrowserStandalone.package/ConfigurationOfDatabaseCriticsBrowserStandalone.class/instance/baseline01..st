baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/JulienDelplanque/DatabaseCriticsBrowser/main'.
		spec project: 'DatabaseCriticsBrowser' with: [
				spec
					className: #ConfigurationOfDatabaseCriticsBrowser;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/JulienDelplanque/DatabaseCriticsBrowser/main/' ].
		spec package: #'DatabaseCriticsBrowser-Standalone'. ].
