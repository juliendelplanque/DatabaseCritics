exporters-writing
createFileNameFor: aDCBExporter
	| dateAndTime |
	dateAndTime := DateAndTime now.
	^ 'critics-' , dateAndTime asDate yyyymmdd , '_' ,  dateAndTime asTime print24 , '.' , aDCBExporter extension