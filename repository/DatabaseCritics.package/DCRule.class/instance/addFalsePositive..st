false-positives
addFalsePositive: aFamixSQLEntity
	self falsePositives add: (DCFalsePositive entity: aFamixSQLEntity forRule: self)