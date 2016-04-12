initialization
initializeShortcuts
	shortcutsCenter := ShortcutsCenter
								on: self
								withShortcutPragma: self shortcutPragma
								helpPragma: self helpPragma.
	shortcutsCenter
		setUpShortcuts.