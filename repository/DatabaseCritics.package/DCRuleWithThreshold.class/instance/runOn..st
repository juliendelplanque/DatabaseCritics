entity-checking
runOn: anEntity
	self isThresholdSet
		ifFalse: [ (DCThresholdIsNotSet rule: self) signal ].
	
	^ super runOn: anEntity