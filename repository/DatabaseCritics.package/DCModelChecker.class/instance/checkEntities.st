model-checking
checkEntities
	"Check all the entities of the model if it is not nil."
	self model ifNotNil: [ :m |
		self entities
			do: [ :entity | self check: entity ] ]