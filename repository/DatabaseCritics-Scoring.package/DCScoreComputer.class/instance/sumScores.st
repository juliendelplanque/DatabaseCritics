score-computation
sumScores
	"Compute the score for the list of rules in the instance variable rules.
	 The rules must have been run on the model."
	
	^ (self rules
			collect: [ :rule | self scoreFor: rule ]) sum