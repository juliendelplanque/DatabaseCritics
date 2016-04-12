initialization
initializeWidgets
	rulesList := self newList.
	falsePositivesList := self newList.
	cancelApplyWidget := DCBCancelApplyButtons new.
	unmarkButton := self newButton