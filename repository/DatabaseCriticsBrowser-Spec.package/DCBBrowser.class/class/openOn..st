opening
openOn: aModel
	| browser |
	browser := self on: aModel.
	browser openWithSpec.
	browser window whenClosedDo: [ browser delete ].
	^ browser