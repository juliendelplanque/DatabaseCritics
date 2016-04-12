api projectSpec
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				package: 'DatabaseCritics' with: [
					spec
						requires: #('Famix-SQL') ];
				package: 'DatabaseCritics-GT' with: [
					spec
						requires: #('DatabaseCritics') ];
				package: 'DatabaseCriticsBrowser' with: [
					spec
						requires: #('DatabaseCritics' 'DatabaseCritics-Exporter' 'HelpCenter' 'SpecModelsAddOns' 'ShortcutsCenter') ];
				package: 'DatabaseCriticsBrowser-Standalone' with: [ 
					spec
						requires: #('DatabaseCriticsBrowser') ];
				package: 'DatabaseCritics-Exporter' with: [ 
					spec
						requires: #('DatabaseCritics' 'XMLWriter') ];
				package: 'DatabaseCritics-Tests' with: [
					spec
						requires: #('DatabaseCritics') ];
				package: 'DatabaseCriticsBrowser-Tests' with: [
					spec
						requires: #('DatabaseCriticsBrowser') ];
				yourself.
			spec
				project: 'Famix-SQL' with: [ 
					spec
						className: 'ConfigurationOfFamixSQL';
						version: #development;
						repository: 'http://smalltalkhub.com/mc/Moose/MooseSQL/main/' ];
				baseline: 'HelpCenter' with: [
					spec repository: 'github://juliendelplanque/HelpCenter/repository'  ];
				project: 'SpecModelsAddOns' with: [ 
					spec
						className: 'ConfigurationOfSpecModelsAddOns';
						version: #development;
						repository: 'http://smalltalkhub.com/mc/JulienDelplanque/SpecAddOns/main' ];
				baseline: 'ShortcutsCenter' with: [
						spec repository: 'github://juliendelplanque/ShortcutsCenter/repository' ];
				project: 'XMLWriter' with: [ 
					spec
						className: 'ConfigurationOfXMLWriter';
						version: #stable;
						repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main' ];
				yourself.
			spec
				group: 'default' with: #('DatabaseCritics' 'DatabaseCritics-Tests' 'DatabaseCritics-GT');
				group: 'exporter' with: #('default' 'DatabaseCritics-Exporter');
				group: 'UI' with: #('default' 'exporter' 'DatabaseCriticsBrowser' 'DatabaseCriticsBrowser-Tests');
				group: 'UI-standalone' with: #('UI' 'DatabaseCriticsBrowser-Standalone');
				group: 'dev' with: #('UI-standalone');
				yourself
		]