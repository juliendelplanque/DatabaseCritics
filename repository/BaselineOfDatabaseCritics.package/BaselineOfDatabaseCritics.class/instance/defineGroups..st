groups
defineGroups: spec
	^ spec
			group: 'default' with: #('DatabaseCritics' 'DatabaseCritics-Tests' 'DatabaseCritics-GT');
			group: 'exporter' with: #('default' 'DatabaseCritics-Exporter');
			group: 'UI' with: #('default' 'exporter' 'DatabaseCriticsBrowser' 'DatabaseCriticsBrowser-Tests');
			group: 'UI-standalone' with: #('UI' 'DatabaseCriticsBrowser-Standalone');
			group: 'dev' with: #('UI-standalone');
			yourself