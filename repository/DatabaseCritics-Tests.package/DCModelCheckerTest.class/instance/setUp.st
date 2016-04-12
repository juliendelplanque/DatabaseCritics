running
setUp
	modelChecker := DCModelChecker new.
	modelChecker rules: ({ DCColumnUppercase . DCMissingPrimaryKey . DCTableUppercase } collect: #new)