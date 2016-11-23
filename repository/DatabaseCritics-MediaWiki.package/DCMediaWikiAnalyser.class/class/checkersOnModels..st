analysis
checkersOnModels: aListOfModels
	^ (aListOfModels collect: [ :model |
			(DCModelChecker withAllRulesButThresholdsOn: model)
				checkEntities;
				yourself ]) sorted: [ :a :b | (self versionToInteger: a) < (self versionToInteger: b) ].