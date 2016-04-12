specs
defaultSpec
	^ SpecLayout composed
			newColumn: [ :column |
				column
					add: #thresholdRulesList;
					add: #thresholdEditor height: self buttonHeight + self inputTextHeight ];
		yourself