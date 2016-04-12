reflective operations
doesNotUnderstand: aMessage
	| class |
	class := self subclasses
					detect: [ :subclass | subclass severityName = aMessage selector ]
					ifNone: [ ^ super doesNotUnderstand: aMessage ].
	^ class new