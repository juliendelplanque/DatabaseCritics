opening
openCenteredOn: aModel
	| browser |
	browser := self openOn: aModel.
	browser window centered.
	^ browser