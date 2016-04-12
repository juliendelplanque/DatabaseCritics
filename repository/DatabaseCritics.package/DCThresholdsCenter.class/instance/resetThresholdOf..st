threshold management
resetThresholdOf: aClass
	"Remove the aClass key from the dictionnary, do nothing if absent."
	classToThresholdDict removeKey: aClass ifAbsent: [ ]