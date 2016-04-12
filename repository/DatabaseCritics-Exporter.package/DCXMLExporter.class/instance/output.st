output
output
	| writer |
	writer := XMLWriter new
					enablePrettyPrinting;
					xml;
					lineBreak: self lineEnding;
					yourself.
	document writeXMLOn: writer.
	^ writer contents