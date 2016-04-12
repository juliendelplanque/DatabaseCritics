dump-loading
generateModelFromFile: aFile
	^ MooseModel new
			entities: (MooseModel importFrom: (ReadStream on: aFile contents)) elements;
			yourself.