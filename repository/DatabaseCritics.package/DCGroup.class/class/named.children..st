instance creation
named: aString children: aSequenceableCollection
	^ self new
		groupName: aString;
		children: aSequenceableCollection;
		yourself