analysis
checkersOnModels: aListOfModels
	^ (aListOfModels collect: [ :model |
			(DCModelChecker withAllRulesButThresholdsOn: model)
				checkEntities;
				yourself ]) sorted: [ :a :b | (self versionToInteger: a model name) < (self versionToInteger: b model name) ].