description
descriptionCheckSourceCode
	<magritteDescription>
	^ MAMemoDescription new
			accessor: #checkSourceCode;
			label: 'Source code';
			priority: 80;
			default: 'check: aFAMIXEntity
	"This message is used to check the model entities.
	If it returns true, the entity is considered as incorrect (violate the rule), else it is considered as correct."
	^ false';
			addCondition: [ :string |
				string beginsWith: 'check:' ] labelled: 'Selector must be #check:';
			beRequired;
			yourself