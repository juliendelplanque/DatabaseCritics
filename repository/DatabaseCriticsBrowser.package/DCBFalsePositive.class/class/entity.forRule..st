instance creation
entity: aFamixSQLEntity forRule: aDCBRule
	^ self new
		entityName: aFamixSQLEntity name;
		entityClass: aFamixSQLEntity class;
		ruleClass: aDCBRule class