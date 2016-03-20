baselines
baseline03: spec
	<version: '0.3-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/JulienDelplanque/DatabaseCriticsBrowser/main'.
		spec baseline: 'DatabaseCriticsBrowserStandalone' with: [
    		spec repository: 'github://juliendelplanque/DatabaseCriticsBrowser:dev/repository' ].
		spec project: 'DatabaseCriticsBrowser' with: [
				spec
					className: #ConfigurationOfDatabaseCriticsBrowser;
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/JulienDelplanque/DatabaseCriticsBrowser/main/' ] ].
