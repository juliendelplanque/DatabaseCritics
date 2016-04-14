packages
definePackages: spec
	^ spec
		package: 'DatabaseCritics' with: [ spec requires: #('Famix-SQL') ];
		package: 'DatabaseCritics-GT' with: [ spec requires: #('DatabaseCritics') ];
		package: 'DatabaseCriticsBrowser' with: [
			spec
				requires: #('DatabaseCritics' 'DatabaseCritics-Exporter' 'HelpCenter' 'SpecModelsAddOns' 'ShortcutsCenter') ];
		package: 'DatabaseCriticsBrowser-Standalone' with: [ spec requires: #('DatabaseCriticsBrowser') ];
		package: 'DatabaseCritics-Exporter' with: [ spec requires: #('DatabaseCritics' 'XMLWriter') ];
		package: 'DatabaseCritics-Tests' with: [ spec requires: #('DatabaseCritics') ];
		package: 'DatabaseCriticsBrowser-Tests' with: [ spec requires: #('DatabaseCriticsBrowser') ];
		yourself