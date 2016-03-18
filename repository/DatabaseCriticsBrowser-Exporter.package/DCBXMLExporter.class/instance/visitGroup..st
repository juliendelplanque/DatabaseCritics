visiting
visitGroup: aDCBGroup
	| groupNode tmp|
	groupNode := XMLElement name: 'group'.
	groupNode attributeAt: 'name' put: aDCBGroup groupName.
	tmp := currentNode.
	currentNode := groupNode.
	super visitGroup: aDCBGroup.
	currentNode := tmp.
	currentNode addNode: groupNode.