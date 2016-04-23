model-building
buildModelWith: aMooseModel
	| table1 table2 refPk refNotPk pk |
	table1 := FAMIXTable new
					name: 'foo';
					mooseModel: aMooseModel;
					yourself.
	pk := FAMIXColumn new
				name: 'pkFoo';
				mooseModel: aMooseModel;
				ownerTable: table1;
				isPK: true.
	self add: 3 columnsTo: table1.
	
	table2 := FAMIXTable new
					name: 'bar';
					mooseModel: aMooseModel;
					yourself.
	refPk := FAMIXColumn new
					name: 'ref_pk';
					mooseModel: aMooseModel;
					ownerTable: table2;
					isFK: true.
	FAMIXFKToPKAssociation new
		mooseModel: aMooseModel;
		from: refPk;
		to: pk.
	refNotPk := FAMIXColumn new
						name: 'ref_notpk';
						mooseModel: aMooseModel;
						ownerTable: table2;
						isFK: true.
	FAMIXFKToPKAssociation new
		mooseModel: aMooseModel;
		from: refNotPk;
		to: (table1 columns detect: [ :col | col isPK not ]).