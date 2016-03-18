versions
version02: spec
	<version: '0.2' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 0.2
Enhanced the user interface:
- Removed drag and drop feature and remplaced it by buttons.
- Use InformationLabelModel to display informations.
- Made list display something else than class names.

Also added unit tests on subwidgets.'.
		spec author: 'JulienDelplanque'.
		spec timestamp: '2/8/2016 14:50'.
		spec 
			project: 'PetitSQLIsland' with: '0.7-baseline';
			project: 'HelpCenter' with: '0.3';
			project: 'XMLWriter' with: '2.6.5';
			project: 'SpecModelsAddOns' with: '0.1-baseline'.
		spec 
			package: #DatabaseCriticsBrowser with: 'DatabaseCriticsBrowser-JulienDelplanque.27';
			package: #'DatabaseCriticsBrowser-Spec' with: 'DatabaseCriticsBrowser-Spec-JulienDelplanque.49';
			package: #'DatabaseCriticsBrowser-Tests' with: 'DatabaseCriticsBrowser-Tests-JulienDelplanque.4';
			package: #'DatabaseCriticsBrowser-Exporter' with: 'DatabaseCriticsBrowser-Exporter-JulienDelplanque.4';
			package: #'DatabaseCriticsBrowser-SpecTests' with: 'DatabaseCriticsBrowser-SpecTests-JulienDelplanque.6'. ].
