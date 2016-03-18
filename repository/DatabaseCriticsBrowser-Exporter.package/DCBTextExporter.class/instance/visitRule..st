visiting
visitRule: aRule
	self shift.
	outputStream
		<< '* ';
		<< aRule ruleName;
		<< ' [';
		<< aRule entitiesViolatingTheRule size asString;
		<< ((aRule entitiesViolatingTheRule size > 1)
				ifTrue: [ ' entities' ]
				ifFalse: [ ' entity' ]);
		<< $];
		<< self lineEnding.
	shiftCount := shiftCount + 1.
	aRule entitiesViolatingTheRule do: [ :entity |
		self shift.
		outputStream
			<< '-';
			<< entity name;
			<< self lineEnding ].
		shiftCount := shiftCount - 1.