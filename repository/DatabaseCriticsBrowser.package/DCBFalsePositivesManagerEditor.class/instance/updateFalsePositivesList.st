updating
updateFalsePositivesList
	| aListOfFalsePositives |
	aListOfFalsePositives := self falsePositiveList.
	aListOfFalsePositives ifEmpty: [ 
		| item |
		item := rulesList selectedItem.
		rulesList resetSelection.
		rulesList items: rulesList listItems \ { item } ].
	falsePositivesList items: aListOfFalsePositives