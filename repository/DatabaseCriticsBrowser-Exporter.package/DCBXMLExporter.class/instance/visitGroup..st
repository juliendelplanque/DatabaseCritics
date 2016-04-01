visiting
visitGroup: aDCBGroup
	| groupNode |
	groupNode := XMLElement name: 'group'.
	groupNode attributeAt: 'name' put: aDCBGroup groupName.
	(super visitGroup: aDCBGroup) do: [ :each |
		groupNode addNode: each ].
	^ groupNode