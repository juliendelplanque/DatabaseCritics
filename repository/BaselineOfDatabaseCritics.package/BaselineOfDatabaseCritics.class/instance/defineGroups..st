groups
defineGroups: spec
	^ spec
			group: 'default' with: #('DatabaseCritics' 'DatabaseCritics-Tests' 'DatabaseCritics-GT' 'DatabaseCritics-DefaultRules' 'DatabaseCritics-DefaultRules-Tests');
			group: 'tools' with: #('default' 'DatabaseCritics-Tools');
			group: 'exporter' with: #('default' 'DatabaseCritics-Exporter');
			group: 'scoring' with: #('default' 'DatabaseCritics-Scoring' 'DatabaseCritics-Scoring-Tests');
			group: 'UI' with: #('default' 'exporter' 'scoring' 'DatabaseCriticsBrowser' 'DatabaseCriticsBrowser-Tests');
			group: 'UI-standalone' with: #('UI' 'DatabaseCriticsBrowser-Standalone');
			group: 'dev' with: #('UI-standalone' 'DatabaseCritics-NotReady');
			group: 'famix-ng' with: #('DatabaseCritics' 'DatabaseCritics-Tests' 'DatabaseCritics-GT' 'DatabaseCritics-DefaultRules' 'DatabaseCritics-DefaultRules-Tests' 'exporter' 'scoring' 'DatabaseCriticsBrowser' 'DatabaseCriticsBrowser-Tests');
			yourself