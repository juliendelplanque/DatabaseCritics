*DatabaseCriticsBrowser-Spec
label
	"Used for displaying classified rules."
	^ self ruleName , ' (' ,self entitiesViolatingTheRuleWithoutFalsePositives size asString , ')'