tests-list-management
testListSelectedItem
	widget listItems: #(1 2 3).
	1 to: 3 do: [ :i |
		widget list setSelectedIndex: i.
		self assert: widget list selectedIndex equals: i ]