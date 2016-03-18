private-helpers
anyListElementClassIs: class
	^ (self listsChooser leftList listItems
		anySatisfy: [ :any | any class = class ])
			or: [ self listsChooser rightList listItems
					anySatisfy: [ :any | any class = class ] ]