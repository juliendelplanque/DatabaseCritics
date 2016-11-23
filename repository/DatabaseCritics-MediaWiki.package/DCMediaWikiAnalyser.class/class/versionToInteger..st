helpers
versionToInteger: aString
	^ ((aString model name splitOn: $.) joinUsing: '') asInteger 