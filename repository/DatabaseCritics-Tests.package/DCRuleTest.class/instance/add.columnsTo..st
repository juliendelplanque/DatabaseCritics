model-building
add: n columnsTo: aTableOrView
	self assert: aTableOrView mooseModel isNotNil.
	1 to: n do: [ :i |
		FAMIXColumn new
			name: (aTableOrView name , '_col_' , i asString);
			mooseModel: aTableOrView mooseModel;
			ownerTable: aTableOrView ].