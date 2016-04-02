api projectSpec
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				package: 'DatabaseCriticsBrowser' with: [
					spec
						requires: #('Famix-SQL') ];
				package: 'DatabaseCriticsBrowser-GT' with: [
					spec
						requires: #('DatabaseCriticsBrowser') ];
				package: 'DatabaseCriticsBrowser-Spec' with: [
					spec
						requires: #('HelpCenter' 'SpecModelsAddOns' 'PgDumpLoader' 'ShortcutsCenter') ];
				package: 'DatabaseCriticsBrowser-Standalone' with: [ 
					spec
						requires: #('DatabaseCriticsBrowser-Spec') ];
				package: 'DatabaseCriticsBrowser-Exporter' with: [ 
					spec
						requires: #('DatabaseCriticsBrowser' 'XMLWriter') ];
				package: 'DatabaseCriticsBrowser-Tests' with: [
					spec
						requires: #('DatabaseCriticsBrowser') ];
				package: 'DatabaseCriticsBrowser-SpecTests' with: [
					spec
						requires: #('DatabaseCriticsBrowser-Spec') ];
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
				project: 'PgDumpLoader' with: [ 
					spec
						className: 'ConfigurationOfPgDumpLoader';
						version: #development;
						repository: 'http://smalltalkhub.com/mc/AnneEtien/Myrddin/main' ];
				baseline: 'ShortcutsCenter' with: [
						spec repository: 'github://juliendelplanque/ShortcutsCenter/repository' ];
				project: 'XMLWriter' with: [ 
					spec
						className: 'ConfigurationOfXMLWriter';
						version: #stable;
						repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main' ];
				yourself.
			spec
				group: 'default' with: #('DatabaseCriticsBrowser' 'DatabaseCriticsBrowser-Tests' 'DatabaseCriticsBrowser-GT');
				group: 'exporter' with: #('default' 'DatabaseCriticsBrowser-Exporter');
				group: 'UI' with: #('default' 'exporter' 'DatabaseCriticsBrowser-Spec' 'DatabaseCriticsBrowser-SpecTests');
				group: 'UI-standalone' with: #('UI' 'DatabaseCriticsBrowser-Standalone');
				group: 'dev' with: #('UI-standalone');
				yourself
		]