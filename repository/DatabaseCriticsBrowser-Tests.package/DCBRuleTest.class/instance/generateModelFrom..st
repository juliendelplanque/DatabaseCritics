model generation
generateModelFrom: aString
	| ast |
	ast := astBuilder parse:  aString.
	ast acceptVisitor: visitorDef.
	ast acceptVisitor: visitorRef.
	^ model