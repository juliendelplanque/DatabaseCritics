*DatabaseCriticsBrowser
label
	^ self groupName , ' (' , self entitiesViolatingARuleWithoutFalsePositives size asString , ')'