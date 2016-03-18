output
output
	| writer |
	writer := XMLWriter new.
	writer
		xml;
		enablePrettyPrinting;
		lineBreak: self lineEnding.
	document writeXMLOn: writer.
	^ writer contents