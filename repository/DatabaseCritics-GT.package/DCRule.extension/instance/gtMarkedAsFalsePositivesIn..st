*DatabaseCritics-GT
gtMarkedAsFalsePositivesIn: composite
	<gtInspectorPresentationOrder: 1>
	composite list
		title: 'Entites marked as a false positive';
		display: [ self entitiesViolatingTheRule \ self entitiesViolatingTheRuleWithoutFalsePositives ]