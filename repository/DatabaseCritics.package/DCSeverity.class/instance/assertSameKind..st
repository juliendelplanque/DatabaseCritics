private-comparing
assertSameKind: anObject
	"Assert the object anObject is the same kind of self. If not raise an assertion error."
	self assert: ((anObject isKindOf: self class superclass) and: [ anObject class ~= Object ]).