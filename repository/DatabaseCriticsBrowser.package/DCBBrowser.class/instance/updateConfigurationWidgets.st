updating
updateConfigurationWidgets
	{ rulesChooser . classificationChooser } do: [ :widget |
		widget cancelApplyWidget applyButton performAction ]