baselines
baseline05: spec
	<version: '0.5-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/JulienDelplanque/DatabaseCriticsBrowser/main/'.
		spec baseline: 'DatabaseCriticsBrowser' with: [
    		spec repository: 'github://juliendelplanque/DatabaseCriticsBrowser/repository' ]
	]