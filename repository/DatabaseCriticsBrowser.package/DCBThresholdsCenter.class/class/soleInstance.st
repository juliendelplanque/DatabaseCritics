accessing
soleInstance
	^ SoleInstance ifNil: [ self reset ]