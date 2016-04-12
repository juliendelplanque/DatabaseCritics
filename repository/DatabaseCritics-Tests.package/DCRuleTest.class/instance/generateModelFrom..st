model generation
generateModelFrom: aMSEString
	| repository |
	repository := MooseModel importFrom: (ReadStream on: aMSEString).
	model entities: repository elements.
	^ model