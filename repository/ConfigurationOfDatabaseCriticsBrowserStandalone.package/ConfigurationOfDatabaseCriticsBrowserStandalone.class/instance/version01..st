versions
version01: spec
	<version: '0.1' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 0.1
First version of this package which aims to integrate the DatabaseCriticsBrowser in Pharo UI so it can be use standalone.'.
		spec author: 'JulienDelplanque'.
		spec timestamp: '2/18/2016 14:43'.
		spec project: 'DatabaseCriticsBrowser' with: '0.2'.
		spec package: #'DatabaseCriticsBrowser-Standalone' with: 'DatabaseCriticsBrowser-Standalone-JulienDelplanque.1'. ].
