specs
defaultSpec
	^ SpecLayout composed
		newColumn: [ :column |
			column
				newRow: [ :row |
					row
						add: #rulesList;
						newColumn: [ :subColumn |
							subColumn
								add: #falsePositivesList;
								add: #unmarkButton height: self buttonHeight ] ];
				add: #cancelApplyWidget height: self buttonHeight ]