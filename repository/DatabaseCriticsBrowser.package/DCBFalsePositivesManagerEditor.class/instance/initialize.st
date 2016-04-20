initialization
initialize
	rules := IdentitySet new.
	super initialize.
	self title: 'False positives editor'.
	falsePositiveToUnmark := Set new.