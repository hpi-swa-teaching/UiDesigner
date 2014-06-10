keyboard shortcut tables
initializeShiftCmdKeyShortcuts

	super initializeShiftCmdKeyShortcuts.
	
	shiftCmdActions at: $f asciiValue + 1 put: #noop: