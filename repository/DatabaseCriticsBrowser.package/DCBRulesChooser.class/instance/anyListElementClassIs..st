private-helpers
anyListElementClassIs: class
	^ (leftItems anySatisfy: [ :any | any class = class ])
			or: [ rightItems anySatisfy: [ :any | any class = class ] ].