analysis
ruleEntityAppearDisappear: checkers
	| appDis appDisArrays |
	appDis := (self appearanceDisappearanceOfRuleViolations: checkers)
					groupedBy: [ :array | { array third asString . array fourth . array fifth asString } ].
	appDisArrays := OrderedCollection new.
	appDis keysAndValuesDo: [ :key :value |
		appDisArrays
			add: { key first .
					key second .
					key third .
					(value detect: [ :a | a second = 'Appearance' ]) first .
					(value detect: [ :a | a second = 'Disappearance' ] ifFound: [ :f | f first ] ifNone: [ '/' ]) } ].
	^ appDisArrays