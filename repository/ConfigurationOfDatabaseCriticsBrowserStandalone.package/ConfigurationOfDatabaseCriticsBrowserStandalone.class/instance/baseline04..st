baselines
baseline04: spec
	<version: '0.4-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/JulienDelplanque/DatabaseCriticsBrowser/main'.
		spec baseline: 'DatabaseCriticsBrowserStandalone' with: [
    		spec repository: 'github://juliendelplanque/DatabaseCriticsBrowser/repository' ].
		spec project: 'DatabaseCriticsBrowser' with: [
				spec
					className: #ConfigurationOfDatabaseCriticsBrowser;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/JulienDelplanque/DatabaseCriticsBrowser/main/' ] ].