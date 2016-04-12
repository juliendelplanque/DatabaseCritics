specs
defaultSpec
	 ^ SpecLayout composed
			newRow: [ :row |
				row
					add: #widgetList;
					add: #shortcutsCenterWidget ];
			yourself