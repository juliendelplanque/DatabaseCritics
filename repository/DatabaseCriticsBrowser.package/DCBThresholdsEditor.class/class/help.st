DCB help
help
	<dcbHelp: 'Thresholds editor'>
	<dcbIcon: #icon>
	<dcbOpen: #openThresholdsEditor>
	^ 'I am the widget used to modify thresholds of rules using them.
	
Select a threshold in the list. Then, you can either set it undefined using the checkbox or set its value in the input field. If the text you entered in the input field can not be parsed by the threshold''s class, an error will be shown by UIManager.

When the thresholds needed are set, click "Apply" or "Ok" button.

If the threshold for a rule is undefined, the rule does not appears in the Rules chooser.
Once the threshold is set for a rule, the Rules chooser is updated and it is possible to add it to the rules to run during the analysis.'