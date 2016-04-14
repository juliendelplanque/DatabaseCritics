*DatabaseCritics-Exporter
asXMLString
	| writer |
	writer := XMLWriter new
					enablePrettyPrinting;
					xml;
					lineBreak: Smalltalk os lineEnding;
					yourself.
	self asXML writeXMLOn: writer.
	^ writer contents