tests-announcement handling
testForwardAnnouncement
	| announcement toForward |
	announcement := nil.
	thresholdsEditor announcer
		when: Announcement do: [ :ann |
			announcement := ann ].
	toForward := Announcement new.
	thresholdsEditor forwardAnnouncement: toForward.
	self assert: announcement isNotNil.
	self assert: toForward hash equals: announcement hash