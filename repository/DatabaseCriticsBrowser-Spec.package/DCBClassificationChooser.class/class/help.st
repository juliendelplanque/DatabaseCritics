DCB help
help
	<dcbHelp: 'Classification chooser'>
	<dcbIcon: #icon>
	<dcbOpen: #openClassifierChooser>
	^ 'I am the widget used to choose the classification of rules.

The left list contains available classification for rules. The right list contains the classifications chosen.

You can set/unset classifications by moving items from a list to another using the buttons under the lists.

Classifications are nested according to their order in the right list. The top-most classification will be the outer-most and the bottom-most will be the inner-most. To change the way classifications are nested use the up/down buttons located under the lists, on the right.

', self doNotForgetHelp