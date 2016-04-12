helper
widgetTitle: aWidget
	^ (Pragma allNamed: #dcbHelp: in: aWidget class class) first argumentAt: 1