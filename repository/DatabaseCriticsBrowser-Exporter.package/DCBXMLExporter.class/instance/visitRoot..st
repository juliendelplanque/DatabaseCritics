visiting
visitRoot: aDCBRoot
	| rootElement |
	rootElement := XMLElement name: 'critic'.
	(super visitRoot: aDCBRoot) do: [ :each |
		rootElement addNode: each ].
	document := XMLDocument root: rootElement.
	^ document