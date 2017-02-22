model generation
generateModelsFromDumpsIn: aDirectory
	"Returns a list of MooseModels generated from .sql files in the directory given as parameter."
	^ aDirectory children
		select: [ :file | file isFile and: [ file extension = 'sql' ] ]
		thenCollect: [ :dump |
			(self generateModelFromDump: dump)
				name: (((dump basename splitOn: $-) third splitOn: $.) allButLast joinUsing: $.);
				yourself. ]