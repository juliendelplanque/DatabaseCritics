packages
definePackages: spec
	^ spec
		package: 'DatabaseCritics' with: [ spec requires: #('Famix-SQL') ];
		package: 'DatabaseCritics-GT' with: [ spec requires: #('DatabaseCritics') ];
		package: 'DatabaseCritics-Tools' with: [ spec requires: #('DatabaseCritics' 'Magritte') ];
		package: 'DatabaseCriticsBrowser' with: [
			spec
				requires: #('DatabaseCritics' 'DatabaseCritics-Exporter' 'DatabaseCritics-Scoring' 'HelpCenter' 'SpecModelsAddOns' 'ShortcutsCenter') ];
		package: 'DatabaseCriticsBrowser-Standalone' with: [ spec requires: #('DatabaseCriticsBrowser' 'PgDumpLoader') ];
		package: 'DatabaseCritics-Exporter' with: [ spec requires: #('DatabaseCritics' 'XMLWriter') ];
		package: 'DatabaseCritics-Scoring' with: [ spec requires: #('DatabaseCritics') ];
		package: 'DatabaseCritics-Scoring-Tests' with: [ spec requires: #('DatabaseCritics-Scoring') ];
		package: 'DatabaseCritics-Tests' with: [ spec requires: #('DatabaseCritics') ];
		package: 'DatabaseCriticsBrowser-Tests' with: [ spec requires: #('DatabaseCriticsBrowser') ];
		package: 'DatabaseCritics-NotReady' with: [ spec requires: #('DatabaseCritics' 'DatabaseCritics-Tests') ];
		yourself