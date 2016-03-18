versions
version01: spec
	<version: '0.1' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 0.1
First stable version of DCB.'.
		spec author: 'JulienDelplanque'.
		spec timestamp: '2/3/2016 17:50'.
		spec 
			project: 'PetitSQLIsland' with: '0.7-baseline';
			project: 'HelpCenter' with: '0.2';
			project: 'XMLWriter' with: '2.6.5'.
		spec 
			package: #DatabaseCriticsBrowser with: 'DatabaseCriticsBrowser-JulienDelplanque.25';
			package: #'DatabaseCriticsBrowser-Spec' with: 'DatabaseCriticsBrowser-Spec-JulienDelplanque.32';
			package: #'DatabaseCriticsBrowser-Tests' with: 'DatabaseCriticsBrowser-Tests-JulienDelplanque.4';
			package: #'DatabaseCriticsBrowser-Exporter' with: 'DatabaseCriticsBrowser-Exporter-JulienDelplanque.3'. ].
