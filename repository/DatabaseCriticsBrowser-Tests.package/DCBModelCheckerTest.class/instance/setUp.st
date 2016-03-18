running
setUp
	modelChecker := DCBModelChecker new.
	modelChecker rules: ({ DCBColumnUppercase . DCBMissingPrimaryKey . DCBTableUppercase } collect: #new)