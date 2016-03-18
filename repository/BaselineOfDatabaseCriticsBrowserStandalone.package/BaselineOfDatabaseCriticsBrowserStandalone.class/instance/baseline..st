api projectSpec
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				package: 'DatabaseCriticsBrowser-Standalone' with: [ 
					spec requires: 'DatabaseCriticsBrowser' ];
				postLoadDoIt: #setDCBStandalone.
			spec project: 'DatabaseCriticsBrowser' with: [
    			spec repository: 'github://juliendelplanque/DatabaseCriticsBrowser/repository' ].
		]