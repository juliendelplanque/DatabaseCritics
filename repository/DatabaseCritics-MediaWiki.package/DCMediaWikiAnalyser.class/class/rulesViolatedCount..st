analysis
rulesViolatedCount: checkers
	^ checkers collect: [ :c | { c model name . (c rules select: #isViolated) size } ].